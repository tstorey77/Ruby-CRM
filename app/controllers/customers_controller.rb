# frozen_string_literal: true

class CustomersController < ApplicationController
  def index
    @Customer = Customer.all
  end

  def alphabetized
    @Customer = Customer.all.order('fullname ASC')
  end

  def missing_email
    @Customer = Customer.where("email = ''")
  end
end
