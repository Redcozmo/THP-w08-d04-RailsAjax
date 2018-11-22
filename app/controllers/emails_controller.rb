class EmailsController < ApplicationController

  def index
    @emails = Email.all
    @email = Email.new
  end

  def new
    @email = Email.new
  end

  # def create
  #   @email = Email.new(email_params)
  #
  #   respond_to do |format|
  #     if @email.save
  #       format.html { redirect_to @email, notice: 'Email was succesfully created' }
  #       format.js
  #       format.json { render json: @email, status: :created, location: @email }
  #     else
  #       format.html { render action: "new" }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  def show
      @email = Email.find(params[:id])
      @email.update(read: true);
      respond_to do |format|
        format.html { }
        format.js
      end
    end

    def destroy
      @email = Email.find(params[:id])
      @email_id = @email.id
      @email.destroy
      respond_to do |format|
        format.html { redirect_to root_path}
        format.js
      end
    end

    def unread
      puts "$"*60
      puts "on est dans le unread"
      puts "$"*60
      @email = Email.find(params[:id])
      @email.update(read: !@email.read)
      respond_to do |format|
        format.html { redirect_to root_path}
        format.js
      end
    end

# private
#
#   def email_params
#     params.require(:email).permit(:title, :body)
#   end
end
