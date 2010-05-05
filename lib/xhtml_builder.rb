#
#  xhtml_builder.rb
#  
#
#  Created by Tobias Selzer on 26.04.10.


class XHTMLBuilder
	attr_accessor :content
  
	def initialize
		@content = ""
	end
	
	def method_missing(sym, *args, &block) 
			@content << "<#{sym}>\n"
			
			if block_given? then yield
			else
				unless (args[0].nil?)
					@content << args[0] << "\n"
				end
			end
      @content << "</#{sym}>\n"
	end	
	
end


