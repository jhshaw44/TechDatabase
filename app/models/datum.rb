class Datum < ActiveRecord::Base

def self.search(search, columns)

	columns_string = ""

	columns.each do |col|
		columns_string = columns_string + '' + "\"#{col}\"" + ' LIKE :test OR '
	end

	#columns_string = columns.to_s

	#columns_string = "\"" + columns_string

	#columns_string.gsub! ", ", "\" || \""

	# cuts off the last ' OR '
	columns_string = columns_string[0..-5]
	#columns_string = columns_string[2..-3]


	# cuts off the last ' || '
	#columns_string = columns_string[0..-5].to_s

	#columns_string = "\"School Name\" || \"CLN\" || \"Grades Served\""

	name = "\"School Name\""
	number = "\"CLN\""

	#columns_string = "\"School Name\""

	#where(name + " LIKE ?", "%#{search}%")
	#where(number + " LIKE ?", "%#{search}%")

	#where(name + " LIKE ? OR " + number + " LIKE ?", "%#{search}%")

	key = "%#{search}%"
	#where(name + ' LIKE :search OR ' + number + ' LIKE :search', search: key)
	where(columns_string, test: key)
end

end
