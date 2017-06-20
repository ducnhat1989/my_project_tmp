class ToDosController < ApplicationController
  def index
    @to_dos = ToDo.order(id: :desc)    
  end
end
