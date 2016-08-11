class DataController < ApplicationController
  before_action :set_datum, only: [:show, :edit, :update, :destroy]

  # GET /data
  # GET /data.json
  def index

# broken code for dynamic searching of all columns  	
=begin
  	@sql_query = "SELECT * FROM data WHERE ("
    @columns = Datum.column_names 

    @results = ""

    # Builds the query one column at a time for the 1 search parameter
    # SELECT * FROM data WHERE (col LIKE '%search%' OR col2 LIKE '%search%' OR ...)
    @columns.each do |col| 
      col = "\"#{col}\""
      #@sql_query = @sql_query + 'OR ' + col + ' LIKE ? '
      @sql_query = @sql_query + "#{col} LIKE '%#{params[:search]}%' OR "
    end

    # chops off the last OR from the string after the entire query is done
    # adds the final closing parenthesis on the end
    @sql_query = @sql_query[0, -4]

=end


	@columns = Datum.column_names

	# Credits to http://www.korenlc.com/creating-a-simple-search-in-rails-4/ for getting us started

	@data = nil

	if params[:search]

		if params[:Search_Group]

			columns_string = params[:Search_Group].to_s
			@columns = columns_string

			if columns_string.length > 15
				col_array = []
				columns_string = columns_string[12..-3]

				@columns = columns_string.split(", ")
				#@columns = col_array

			else				
				@columns = Datum.column_names
			end

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



    # Code to test

    #search = "\"School Name\""
	#@data = Datum.where([search + ' LIKE ?', "%#{params[:search]}%"])
	#@data = Datum.where(['"School Name" LIKE ?', "%#{params[:search]}%"])
	
	#@search_params = "\"School Name\" LIKE ? OR \"School Number\" LIKE ?"

    #@data = Datum.where(@search_params, search: key)
    #@data = Datum.where([@search_params,"%#{params[:search]}%"])
	
	
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
