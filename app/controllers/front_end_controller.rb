class FrontEndController < ApplicationController
  def home
    @title = "Home"
  end

  def about
    @title = "About"
  end

  def contact
    @title = "Contact"
  end

  def search
    @title = "Search"
  end
end
