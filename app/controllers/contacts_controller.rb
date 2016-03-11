class ContactsController < ApplicationController
    
    def new
        @contact = Contact.new
    end
    
    def create
        @contact = Contact.new(contact_params)
        if @contact.save
            name = params[:contact][:name]
            email = params[:contact][:email]
            body = params[:contact][:body]
            
            ContactMailer.contact_email(name, email, body).deliver_now
            
            flash[:success] = 'Wiadomość wysłano.'
            redirect_to new_contact_path
        else
            flash[:danger] = 'Ups.. Wystąpił błąd, spróbuj ponownie.'
            render :new
        end
    end
    
    private
    def contact_params
        params.require(:contact).permit(:name, :email, :body)
    end
end