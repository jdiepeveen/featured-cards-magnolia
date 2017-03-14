[#-------------- ASSIGNMENTS --------------]
[#assign targetNode = cmsfn.contentById(content.link)!]

[#assign title = content.title!targetNode.title!]
[#assign imageItemKey = content.image!targetNode.image!]
[#assign text = content.abstract!targetNode.abstract!]

[#assign hasImage = false]
[#if imageItemKey?has_content]
    [#assign image = damfn.getRendition(imageItemKey, def.parameters.imageVariation!"original")]
	[#if image?has_content]
		[#assign hasImage = true]
	[/#if]
[/#if]

[#-------------- RENDERING  --------------]
<div class="featured-cards__item">
[#if hasImage]
	<img src="${image.link!}">
[/#if]
	<h3 class="featured-cards__item__title">${title}</h3>
	<p class="featured-cards__item__abstract">${text}</p>
</div>