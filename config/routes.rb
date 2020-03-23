# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'customers#index'
  get 'customers/alphabetized', to: 'customers#alphabetized', as: 'alphabetized'
  get 'customers/missing_email', to: 'customers#missing_email', as: 'missing_email'
end
