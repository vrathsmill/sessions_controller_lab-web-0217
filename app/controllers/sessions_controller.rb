class SessionsController < ApplicationController


    def new

    end

    def create
    if params[:name].nil?
       redirect_to '/login'
     elsif params[:name].empty?
         redirect_to '/login'
     elsif params[:name]
        session[:name] = params[:name]
        redirect_to '/'
      end
    end

    def destroy
       session.delete :name
       redirect_to '/login'
  end
end
