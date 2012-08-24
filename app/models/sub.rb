#!/usr/bin/env ruby1.9

class Class
  def subclasses
    ObjectSpace.each_object(Class).select { |klass| klass.superclass ==  self }
      .sort {|a,b| a.name <=> b.name }
    end
  
  #def self.descendants
    #ObjectSpace.each_object(Class).select { |klass| klass.klass < self }
  #end
  
#class Child < Parent
  
#end  
  
#class GrandChild < Child
  
#end  

#puts Parent.descendants
#puts Child.descendants
  
end

