require 'rails_helper'

 RSpec.describe UsersController, :type => :controller do
 # #1
   let(:new_user_attributes) do
     {
         name: "BlocHead",
         email: "blochead@bloc.io",
         password: "blochead",
         password_confirmation: "blochead"
     }
   end
 end
