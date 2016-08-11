class DataController < ApplicationController
  before_action :set_datum, only: [:show, :edit, :update, :destroy]

  # GET /data
  # GET /data.json
  def index

	@columns = Datum.column_names

	@data = nil
	if params[:search]

		if params[:Search_Group]

      my_id = params[:Search_Group][:group_id]

      # if any of the groups are selected besides the blank
			if my_id != ""

        # look up the row with our ID, grab only the children columns, take the first index of the array, and then make an array out of the string
        @columns = SearchGroup.where(id: my_id).pluck(:children_columns)[0].split(", ")

			else				
				@columns = Datum.column_names
			end


      #@columns = Datum.column_names
		else
			@columns = Datum.column_names
		end

		# we never want to show the id, this is strictly for our database
		index = @columns.find_index("id")
		if index
			@columns.delete_at(index)
		end

		@data = Datum.search(params[:search], @columns)
	else
		@data = Datum.all
	end
	
  end

  # GET /data/1
  # GET /data/1.json
  def show
  end

  # GET /data/new
  def new
    @datum = Datum.new
  end

  # GET /data/1/edit
  def edit
  end

  # POST /data
  # POST /data.json
  def create
    @datum = Datum.new(datum_params)

    respond_to do |format|
      if @datum.save
        format.html { redirect_to @datum, notice: 'Datum was successfully created.' }
        format.json { render :show, status: :created, location: @datum }
      else
        format.html { render :new }
        format.json { render json: @datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data/1
  # PATCH/PUT /data/1.json
  def update
    respond_to do |format|
      if @datum.update(datum_params)
        format.html { redirect_to @datum, notice: 'Datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @datum }
      else
        format.html { render :edit }
        format.json { render json: @datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data/1
  # DELETE /data/1.json
  def destroy
    @datum = Datum.find(params[:id])
    @datum.destroy
    respond_to do |format|
      format.html { redirect_to data_url, notice: 'Datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datum
      @datum = Datum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def datum_params
      params.require(:datum).permit!
    end
end
