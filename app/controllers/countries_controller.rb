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

  private

  require 'rest-client'

  def fetch_name(name)
    endpoint = "https://restcountries.com/v2/name/#{name}"
    response = RestClient.get(endpoint)
    render json: response
  end

end
