class PeopleController < ApplicationController
  before_action :set_person, only: [ :show, :edit, :update, :destroy ]
  before_action :set_address_attributes, only: [ :new, :edit, :create, :update ]
  before_action :set_phone_numbers, only: [ :new, :edit, :create, :update ]
  # GET /people
  def index
    @people = Person.all.includes(:phone_numbers, :address)
    respond_to do |format|
      format.html 
      format.json { render json: @people }
    end
  end

  # GET /people/1
  def show
    respond_to do |format|
      format.html
      format.json { render json: @person }
    end
  end

  # GET /people/new
  def new
    @person = Person.new
    @person.phone_numbers.build
    @person.build_address
    respond_to do |format|
      format.html
      format.json { render json: @person }
    end
  end

  # GET /people/1/edit
  def edit
    @person.phone_numbers.build if @person.phone_numbers.empty?
    @person.build_address if @person.address.nil?
    respond_to do |format|
      format.html
      format.json { render json: @person }
    end
  end

  # POST /people
  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to person_path(@person), notice: "Pessoa criada com sucesso."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /people/1
  def update
    if @person.update(person_params)
      redirect_to person_path, notice: "Pessoa atualizada com sucesso."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /people/1
  def destroy
    @person.destroy
    redirect_to people_url, notice: "Pessoa removida com sucesso."
  end

  private

  def set_address_attributes
    @states = ['AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA',
               'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI', 'RJ', 'RN',
               'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO']
  end

  def set_phone_numbers
    @operation_types = ['Residencial', 'Celular', 'Comercial']
  end


  def set_person
    @person = Person.includes(:address, :phone_numbers).find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Pessoa não encontrada" }, status: :not_found
  end

  def person_params
    params.require(:person).permit(
      :name,
      :email,
      :password,
      phone_numbers_attributes: [
        :id,
        :number,
        :operation_type,
        :_destroy
      ],
      address_attributes: [
        :id,
        :street,
        :city,
        :state,
        :zp_code
      ]
    )
  end
end
