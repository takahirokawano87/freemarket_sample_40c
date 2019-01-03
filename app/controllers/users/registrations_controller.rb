# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    super
    @personal_info = resource.build_personal_info
  end

  # POST /resource
  def create
      ActiveRecord::Base.transaction do
        build_resource(sign_up_params)

        @personal_info = resource.build_personal_info
        @personal_info.family_name = params[:user][:personal_info][:family_name]
        @personal_info.first_name = params[:user][:personal_info][:first_name]
        @personal_info.family_kana = params[:user][:personal_info][:family_kana]
        @personal_info.first_kana = params[:user][:personal_info][:first_kana]
        @personal_info.postal_code = params[:user][:personal_info][:postal_code]
        @personal_info.prefectures_code = params[:user][:personal_info][:prefectures_code]
        @personal_info.municipality = params[:user][:personal_info][:municipality]
        @personal_info.address_num = params[:user][:personal_info][:address_num]
        @personal_info.building_name = params[:user][:personal_info][:building_name]
        @personal_info.telephone = params[:user][:personal_info][:telephone]

        resource.save
        yield resource if block_given?
        if resource.persisted?
          if resource.active_for_authentication?
            if @personal_info.save
              set_flash_message! :notice, :signed_up
              sign_up(resource_name, resource)
              respond_with resource, location: after_sign_up_path_for(resource)
            else
              render action: :new
            end
          else
            set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
            expire_data_after_sign_in!
            respond_with resource, location: after_inactive_sign_up_path_for(resource)
          end
        else
          clean_up_passwords resource
          set_minimum_password_length
          respond_with resource
        end
      end
  end


  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up)
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.

  def after_sign_up_path_for(resource)
    root_url
  end


  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
