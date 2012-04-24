# coding: utf-8
module PaozhoumoUser
  class User
    module OmniauthCallbacks
      ["weibo"].each do |provider|
        define_method "find_or_create_for_#{provider}" do |response|
          uid = response["uid"]
          data = response["info"]
          if user = User.where("paozhoumo_user_authorizations.provider" => provider , "paozhoumo_user_authorizations.uid" => uid).includes("authorizations").first
            user
          elsif user = User.find_by_email(data["email"])
            user.bind_service(response)
            user
          else
            user = User.new_from_provider_data(provider, uid, data)

            if user.save(:validate => false)
              user.authorizations << Authorization.new(:provider => provider, :uid => uid )
              return user
            else
              Rails.logger.warn("User.create_from_hash 失败，#{user.errors.inspect}")
              return nil
            end
          end
        end
      end

      def new_from_provider_data(provider, uid, data)
        User.new do |user|
          user.email = data["email"]
          user.email = "twitter_#{uid}@twitter.com" if provider == "twitter"
          user.email = "douban_#{uid}@douban.com" if provider == "douban"
          user.email = "weibo_#{uid}@weibo.com" if provider == "weibo"
          user.role_id = 3
          #user.login = data["nickname"]
          #user.login = data["name"] if provider == "google"
          #user.login.gsub!(/[^\w]/, "_")

          #if User.where(:login => user.login).count > 0 || user.login.blank?
            #user.login = "u#{Time.now.to_i}" # TODO: possibly duplicated user login here. What should we do?
          #end

          #user.password = Devise.friendly_token[0, 20]
          #user.location = data["location"]
          #user.tagline = data["description"]
        end
      end
    end
  end
end