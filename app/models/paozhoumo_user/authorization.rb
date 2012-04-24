module PaozhoumoUser
  class Authorization < ActiveRecord::Base
    belongs_to :user
    attr_accessible :provider, :uid, :user_id
    # validates :provider, :presence => true, :uniqueness => {:scope => :user_id}
    # validates :uid, :presence => true, :uniqueness => {:scope => :provider}
    # belongs_to :admin, :foreign_key=> "user_id"

    # def self.create_with_omniauth(auth)
    #       create! do |authorization|
    #         authorization.provider = auth["provider"]
    #         authorization.uid = auth["uid"]
    #         # authorization.name = auth["user_info"]["name"]
    #       end
    #     end
  end
end
