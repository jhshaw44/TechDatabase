class SearchGroupController < ApplicationController

	def index
		@column_name = ""
		@query = add_column(data, @column_name, :text, { limit: 300} )
	end
end
