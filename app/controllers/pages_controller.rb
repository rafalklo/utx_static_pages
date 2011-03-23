class PagesController < ApplicationController
  # GET /pages/1
  # GET /pages/1.xml
  def show
    if params[:permalink]
      @page = Page.find_by_permalink_and_locale(params[:permalink], I18n.locale.to_s)
      raise ActiveRecord::RecordNotFound, "Page not found" if @page.nil?
    else
      @page = Page.find(params[:id])
    end
  end
end
