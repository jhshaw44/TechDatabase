class Datum < ActiveRecord::Base

	def self.search(search, columns)

		columns_string = ""

		# Chains each column to the sql query
		columns.each do |col|
			columns_string = columns_string + '' + "\"#{col}\"" + ' LIKE :test OR '
		end

		# Cuts off the last ' OR '
		columns_string = columns_string[0..-5]

		key = "%#{search}%"
	
		# Generates a very long where statement and maps each condition to the same search key
		# where("col1 LIKE :key OR col2 LIKE :key OR col3 LIKE :key ...")
		where(columns_string, test: key)
	end

end
