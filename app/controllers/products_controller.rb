require 'yaml'
class ProductsController < ApplicationController
  caches_page :show, :cache_path => Proc.new { |c| c.params }
  caches_page :index

  def show
    products = YAML.load_file("#{Rails.root.to_s}/config/products.yml")
    @product = products[params[:slug]]
    redirect_to root_path if @product.nil?
  end
end
