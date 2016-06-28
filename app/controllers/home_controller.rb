class HomeController < ApplicationController

  def index
    @json_view_model = {
        message: "Hello World!!!"
    }
  end
end