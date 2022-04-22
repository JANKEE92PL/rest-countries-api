class CountriesController < ApplicationController
  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @countries = Country.all
  end

  def show
    @country = Country.find(params[:id])
  end


  def fetch
    require 'rest-client'
    endpoints = {
      all:  "https://restcountries.com/v2/all",
      name: "https://restcountries.com/v2/name/",
    }
    response = RestClient.get(endpoints["all"])
    render json: response
  end
end
