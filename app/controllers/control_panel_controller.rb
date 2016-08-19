class ControlPanelController < ApplicationController

	# GET /control_panel
	# GET /control_panel.json
	def index

  	end

	# GET /control_panel/add_column
	# GET /control_panel/add_column.json
  	def add_column
  		data_table = "data"
  		column_name_raw = "#{params[:column_name]}"
  		column_name = "\"#{column_name_raw}\""


  		# WARNING -- Code below is prone to SQL Injection

  		# example
  		# query = "ALTER TABLE mytable ADD COLUMN mycolumn character varying(50) NOT NULL;"
  		query = "ALTER TABLE #{data_table} ADD COLUMN #{column_name} character varying(300)"
		results = ActiveRecord::Base.connection.execute(query)


		# appends our new column to the end of the 'children_columns' string

		my_id = params[:Search_Group][:group_id]

        # if any of the groups are selected besides the blank
        if my_id != ""
			entry = SearchGroup.find_by(id: my_id)
			if entry
				newColumnsString = "#{entry.children_columns}, #{column_name_raw}"
				entry.update(children_columns: newColumnsString)
			end
		end
  	end

  	# GET /control_panel/remove_column
	# GET /control_panel/remove_column.json
  	def remove_column
  		data_table = "data"
  		column_name_raw = "#{params[:column_name]}"
  		column_name = "\"#{column_name_raw}\""


  		# WARNING -- Code below is prone to SQL Injection

  		# example
  		# query = "ALTER TABLE mytable DROP COLUMN mycolumn character varying(50) NOT NULL;"
  		query = "ALTER TABLE #{data_table} DROP COLUMN #{column_name} character varying(300)"
		results = ActiveRecord::Base.connection.execute(query)


		# appends our new column to the end of the 'children_columns' string

		my_id = params[:group_id]

        # if any of the groups are selected besides the blank
        if my_id != ""
			entry = SearchGroup.find(id: my_id)
			entry.children_columns
			# find index of where our column name starts
			# find index of following ','
			# slice until this point
		end
  	end
end
