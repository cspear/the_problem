require_relative '../salesforce.rb'

describe "keyword?" do
	it "should return true with word DEPEND" do
		keyword?("DEPEND").should eql true
	end

	it "should return true with work INSTALL" do
		keyword?("INSTALL").should eql true
	end

	it "should return FALSE with word foo" do
		keyword?("foo").should eql false
	end
end

describe "read_data_yml" do 
	it "should read yml file into & return string" do
	end
end

describe "parse_data_read" do
	it "should create model with DEPEND data" do
	end

	it "should create installed list with INSTALL data" do
	end

	it "should call list with LIST data" do
	end
end

describe "install" do
	it "should read rules from model.yml" do
	end

	it "should install ITEM and dependencies based on rules" do
  end

  it "should update LIST with new item and dependencies" do
	end
end

describe "model" do
	it "should create model if given Array of > 1 item" do
  end

  it "should handle model of 0 length and not crash" do
  end
end

describe "remove" do
	it "should remove ITEM and its dependencies, if other items don't depend on it" do
  end
  it "should " do
  end
end

describe "list" do
	it "should read list and print it (not sure how to test)" do
	end
end