#notes:
# operations on each object.
# DEPEND item1 item2 (= item1 depends on item 2 + list)
# INSTALL item1  (=installs item1 and its dependencies)
# REMOVE item1 (=removes item1 and its dependencies if only it depends on it)
# LIST (=lists the names of all currently-installed components)
require 'yaml'

def keyword?(word)
	if word = "DEPEND" || word == "INSTALL" || word == "REMOVE" || word == "LIST"
		true
	else
		false
	end
end

def read_data_yml(filename)
	input = YAML.load_file(filename)
end

def parse_data_read(data)
	action = nil
	depend_arry = []
	words = data.split(/\W+/)
	words.each do |word|
		if action == ("DEPEND" and keyword?(word))
			model(depend_arry)
		end

		case word
		when "DEPEND"
			action = "DEPEND"
			depend_arry = Array.new
  	when "INSTALL"
			action = "INSTALL"
		when "REMOVE"
			action = "REMOVE"
		when "LIST"
			list
			# print out list of installed items
		else
			if action == "DEPEND"
				depend_arry << word
			elsif action == "INSTALL"
				install(word)
			elsif action == "REMOVE"
				remove(word)
			else
				# 
			end
		end
	end
end

def install(item)
	# read rules
	# install item(s)
	# update 'list' 
	# return 'list'
end

def model(array)
	#parse array (setting model to explicit w/ each dependency. save model to yml file)
	explicit = array.shift
	if array.count == 1
		YAML.dump([explicit,[array.shift]],"model1.yml")
	else
		array.each do |dependency|
			YAML.dump([explicit,[dependency]],"model1.yml")
		end
	end
	#add to model already existing, or create
	#save items to model.yml
end

def remove(item)
	# read model
	# determine if item is in model, is it a dependency or explicit?
	# remove item(s) from 'list'
	# return 'list'
end

def list
	list = read_data_yml('list.yml')
	list.each do |item|
		puts item
	end
end


data_input = read_data_yml('data.yml')
parse_data_read(data_input)