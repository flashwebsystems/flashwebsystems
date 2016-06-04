class LoginsController < ApplicationController
  before_action :set_login, only: [:edit, :update]

  # GET /logins/1
  # GET /logins/1.json
  def show
    @login = Login.find(params[:id])
  end

  # GET /logins/new
  def new
    @login = Login.new
  end
  
  def create
    @user = Login.new(login_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
  

  # GET /logins/1/edit
  def edit
    #@login = Login.find(params[:id])
    #if @login.update_attributes(login_params)
      #flash[:success] = "Profile updated"
      #redirect_to @login
      # Handle a successful update.
    #else
    #  render 'edit'
    #end
  end
  
  def update
    if @login.update_attributes(login_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  # POST /logins
  # POST /logins.json
  
  def create
    @login = Login.new(login_params)
    respond_to do |format|
      if @login.save
        log_in @login
        format.html { redirect_to @login, notice: 'Login was successfully created.' }
        format.json { render :show, status: :created, location: @login }
        flash[:success] = "Welcome to the Sample App!"
      else
        format.html { render :new }
        format.json { render json: @login.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /logins/1
  # PATCH/PUT /logins/1.json
  def update
    respond_to do |format|
      if @login.update(login_params)
        format.html { redirect_to @login, notice: 'Login was successfully updated.' }
        format.json { render :show, status: :ok, location: @login }
      else
        format.html { render :edit }
        format.json { render json: @login.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /logins/1
  # DELETE /logins/1.json
  def destroy
    @login.destroy
    respond_to do |format|
      format.html { redirect_to logins_url, notice: 'Login was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_login
      @login = Login.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def login_params
      params.require(:login).permit(:name, :lastname, :email, :password, :sexo)
    end
    
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    
    # Confirms the correct user.
    def correct_user
      @user = Login.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
    
end
