class AutocompleteController < ApplicationController
  def clients
    if params[:term]
      like  = "%".concat(params[:term].concat("%"))
      clients = Client.where("legal_name like ?", like)
    else
      clients = Client.all
    end
    list = clients.map {|u| Hash[id: u.id, label: u.legal_name, legal_name: u.legal_name]}
    render json: list
  end
  def services
    if params[:term]
      like  = "%".concat(params[:term].concat("%"))
      services = Service.where("description like ?", like)
    else
      services = Service.all
    end
    list = services.map {|u| Hash[id: u.id, label: u.description, description: u.description]}
    render json: list
  end
end
