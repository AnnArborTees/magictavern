require 'yaml'
class ProductsController < ApplicationController
  def show
    products = YAML.load_file("#{Rails.root.to_s}/config/products.yml")
    @product = products[params[:slug]]
  end
end
