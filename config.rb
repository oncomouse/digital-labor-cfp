###
# Compass
###

set :markdown_engine, :kramdown
set :markdown, :fenced_code_blocks => true,
							 :autolink => true, 
							 :smartypants => true,
							 :footnotes => true,
							 :superscript => true

set :site_deploy_root, "/digital-labor-cfp"

###
# Page options, layouts, aliases and proxies
###

page "*.html", :layout => "layout"

###
# Helpers
###

set :build_dir, "docs"

class String
	def naturalized
		scan(/[^\d\.]+|[\d\.]+/).collect { |f| f.match(/\d+(\.\d+)?/) ? f.to_f : f }
	end
end

# Build-specific configuration
configure :build do
	set :http_prefix, config[:site_deploy_root]
end