class Human
 attr_accessor :name, :status, :complexion
 def initialize(name, status,complexion)
 	@status = status
 	@name = status
 	@complexion = complexion
 end

 # getter
 def name
 	@name
 end

 def name=(name)
 	@name = name
 end

end
