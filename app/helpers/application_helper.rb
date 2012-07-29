module ApplicationHelper

	def imgLink(image,size, link, options = {})
		link_to( image_tag('/widgets/images/' + image, :size => size), link, options)
	end

end
