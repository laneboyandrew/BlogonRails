class ContactsController < ApplicationController

  def new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.valid?
      @contact.save
    else
      #т.к. возвращает на текущую стр без метода get необходимо сделать ренд на /contact/new т.к. там есть get
      render action: 'new'
      end
    end

  end

  private

  def contact_params
    params.require(:contact).permit(:email, :message)
  end

