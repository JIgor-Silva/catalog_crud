class PeoplesController < ApplicationController
  before_action :set_person, only: [ :show, :edit, :update, :destroy ]

  def index
    @persons = Person.all.includes(:phone_numbers, :address)
  end

  def show
  end

  def new
    @person = Person.new
    @person.phone_numbers.build
    @person.build_address
  end

  def edit
    @person.phone_numbers.build if @person.phone_numbers.empty?
    @person.build_address if @person.address.nil?
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to @person, notice: "Pessoa criada com sucesso."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @person.update(person_params)
      redirect_to @person, notice: "Pessoa atualizada com sucesso."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @person.destroy
    redirect_to people_url, notice: " Pessoa removida com sucesso."
  end

  private

  def set_person
    @person = Person.find(params[:id])
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
