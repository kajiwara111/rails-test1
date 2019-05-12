class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to new_contact_path
    else
      #render :new, notice: 'content部分は1~140文字で入力してください'　←この書き方だとflash反映されない
      #nowがなくても動いた。nowは同一リクエストでflash伝えたいときに使用。render先にflash渡したいときはつける。
      flash.now[:notice] = "nameは1文字以上、contentは1~140文字、emailは正しい形式で入力してください"
      render :new
    end
  end
  
  private
  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end
end