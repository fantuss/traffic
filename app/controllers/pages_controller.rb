class PagesController < ApplicationController
    def show
        if params[:permalink]
            @page = Page.find_by_permalink(params[:permalink])
        else
            @page = Page.find(params[:id])
        end
    end
end
