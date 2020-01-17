class ContactsController < ApplicationController
  def index
    @contacts = current_user.contacts
  end

  def new
    @contact = Contact.new
  end

  def create
    user = User.find(email: contact_params[:record][:email])
    @contact =current_user.contacts.build(record: user)
    if contact.save
      flash[:notice] = "Contact successfully create"
      redirect_to contacts_path
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(record: :email)
  end
end
