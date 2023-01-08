class QuotesController < ApplicationController

  before_action :set_quote, only: [:show, :update, :edit, :destroy]


  def index
    @quotes = Quote.all
  end

  def new
    @quote = Quote.new 
  end
  def edit

  end
  def update
    if @quote = Quote.update(quote_params)
      redirect_to quotes_path, notice: "Quote was successfully updated"
    else 
      render :edit
    end
  end

  def show 
  end

  def create
    @quote = Quote.create(quote_params)
    if @quote.save
      redirect_to quotes_path, notice: "Quote was successfully created"
    else
      render :new
    end
  end
  def destroy 
    @quote.destroy
    redirect_to quotes_path, notice: "Quote was successfully destroyed"
  end
  private

  def set_quote
    @quote = Quote.find(params[:id])
  end

  def quote_params 
    params.require(:quote).permit(:name)
  end
end
