class ProductsController < ApplicationController
  def index
    @products = Product.order(:name)
    respond_to do |format|
    	format.html
    	format.csv {send_data @products.to_csv} #sned_data will make the browser downlad the file
    	# format.csv {render text: @products.to_csv} #render text: makes the page so data #the @products.to_csv is done in the model
    	format.xls #{ send_data @products.to_csv(col_sep: "\t") } #becuase we set up new type in initializers/mime_types.rb i can now format.xls the col_sep make the file tab delimited
    end
  end

  def import
  	Product.import(params[:file])
  	redirect_to root_url, notice: "PRODUCTS IMPORTED"
  end
end
