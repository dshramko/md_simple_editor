class MdSimpleEditorController < ApplicationController
	def preview
		options = {
				autolink: true,
				no_intra_emphasis: true,
				disable_indented_code_blocks: true,
				fenced_code_blocks: true,
				lax_html_blocks: true,
				strikethrough: true,
				superscript: true,
				tables: true,
		}
		html = Redcarpet::Markdown.new(Redcarpet::Render::HTML, options).render(params['md']).html_safe
		render html: html
	end
end
