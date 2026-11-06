class StoresController < ApplicationController

  def new
    @store = Store.new
  end

  def validate
    store = Store.new(store_params)

   
    if store.valid? || store_params.values.all?(&:blank?)
     render json: store, status: :ok    
    elsif !store.valid?
       render json: store.errors.full_messages.to_json, status: :unprocessable_entity
    end

   
   
  end
  
  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to store_url(@store)
       
    end
  end

  def show
  end

  def store_params
    params.require(:store).permit(:email, :name)
  end
end
