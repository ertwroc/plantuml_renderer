class PlantumlMacro
	def initialize(view, args, text, attachments)
		@result = build(args, attachments)
		Rails.logger.info("INIT")
	end
	def render()
		Rails.logger.info("RENDER")
	end
end