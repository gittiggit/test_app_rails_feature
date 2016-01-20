class TestJqueriesController < ApplicationController
  before_action :set_test_jquery, only: [:show, :edit, :update, :destroy]

  # GET /test_jqueries
  # GET /test_jqueries.json
  def index
    @test_jqueries = TestJquery.all
  end

  # GET /test_jqueries/1
  # GET /test_jqueries/1.json
  def show
  end

  # GET /test_jqueries/new
  def new
    @test_jquery = TestJquery.new
  end

  # GET /test_jqueries/1/edit
  def edit
  end

  # POST /test_jqueries
  # POST /test_jqueries.json
  def create
    @test_jquery = TestJquery.new(test_jquery_params)

    respond_to do |format|
      if @test_jquery.save
        format.html { redirect_to @test_jquery, notice: 'Test jquery was successfully created.' }
        format.json { render :show, status: :created, location: @test_jquery }
      else
        format.html { render :new }
        format.json { render json: @test_jquery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_jqueries/1
  # PATCH/PUT /test_jqueries/1.json
  def update
    respond_to do |format|
      if @test_jquery.update(test_jquery_params)
        format.html { redirect_to @test_jquery, notice: 'Test jquery was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_jquery }
      else
        format.html { render :edit }
        format.json { render json: @test_jquery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_jqueries/1
  # DELETE /test_jqueries/1.json
  def destroy
    @test_jquery.destroy
    respond_to do |format|
      format.html { redirect_to test_jqueries_url, notice: 'Test jquery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_jquery
      @test_jquery = TestJquery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_jquery_params
      params.require(:test_jquery).permit(:name, :body, :salary, :date)
    end
end
