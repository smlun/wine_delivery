class WinesController < ApplicationController
  def index
    @wines = Wine.all
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
    @wines = Wine.all
  end

  def update
  end

  def destroy
  end

end
