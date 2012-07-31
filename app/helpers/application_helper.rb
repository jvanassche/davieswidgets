module ApplicationHelper

	def imgLink(image,size, link, options = {})
		link_to( image_tag('/widgets/images/' + image, :size => size), link, options)
	end


	def store_return_to(link)
		session[:return_to] = link
	end

	def link_to_return(returnlink, text, link, options = {})
		store_return_to(returnlink)
		link_to(text, link, options)
	end

	def imgLink_return(returnlink,image, size, link, options ={})
		store_return_to(returnlink)
		imgLink(image, size, link, options)
	end
end
