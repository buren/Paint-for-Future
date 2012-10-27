class ContactsController < ApplicationController
  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = Contact.order("created_at asc")
    @partners = Video.order("created_at desc")
    @messages = Message.order("created_at desc")

    @admin = current_admin_user

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contacts }
    end
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
    @contact = Contact.find(params[:id])

    @admin = current_admin_user

    if params[:content] != nil && @admin != nil 
      mercury_contact = @contact
      mercury_contact.description = params[:content][:contact_description][:value] if params[:content][:contact_description] != nil
      mercury_contact.save!
      render text: ""  
    else
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @contact }
      end
    end

  end
end
