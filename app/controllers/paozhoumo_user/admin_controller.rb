# coding: utf-8
module PaozhoumoUser
  class AdminController < ApplicationController
    before_filter :authenticate_user!
    
    layout 'devise'
    def userlist
      @users = User.find(:all)
    end
    def edit
      @user = User.find params[:id]
    end
    def update
      @user = User.find params[:id]
      if @user.update_attributes(params[:user])
        redirect_to admin_userlist_path(@user), notice: '更新成功.'
      else
        render action: "edit"
      end
    end
  end
end