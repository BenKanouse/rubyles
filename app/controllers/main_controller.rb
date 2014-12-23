class MainController < ApplicationController
  def index
    @transactions = Transaction.all
  end
end
