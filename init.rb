#require_dependency 'plantuml_macro'
require 'zlib'
require "#{Rails.root}/plugins/plantuml_renderer/lib/plantuml_macro"
Redmine::Plugin.register :plantuml_renderer do
  name 'Plantuml Renderer plugin'
  author 'ERt'
  description 'This is a plugin for Redmine 2.2.0.stable used for rendering uml diagrams written in plantuml text format.'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://djangonotes.herokuapp.com'

  Redmine::WikiFormatting::Macros.register do
	desc <<-EOHELP
Renders UML diagram from plantuml source.
EOHELP
	macro :uml do |obj, args, text|
		#macro = PlantumlMacro.new(self, args, text, obj.respond_to?('page') ? obj.page.attachments : nil)
		#macro.render
		#String compress
		#regexp = /(?s)(?i)^\s*(@startuml[^\n\r]*)?\s*(.*?)\s*(@enduml)?\s*$/
		#if (text =~ regexp)
		#	clean = text.gsub(/@enduml[^\n\r]*/, "")
		#	clean = clean.gsub(/@startuml[^\n\r]*/, "")
		#	clean = clean.strip
		#	#To bytes
		#	bytes = clean.codepoints.to_a
		#	# Compress
		#	compressed = Zlib::Deflate.deflate(bytes)
		#	# urlencode
		#	key = Rack::Utils.escape(compressed)
		#else
			#error msg
		#end
		#diagramid = encode(text)#TODO:Test if encode64 is working here
		#render :partial => 'plantuml_renderer/image', :locals => {:diagram => "diagram", :code => text}
		render :partial => 'plantuml_renderer/jsimage', :locals => {:code => text}
	end
  end
end
