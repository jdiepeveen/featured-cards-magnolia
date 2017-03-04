[#-------------- ASSIGNMENTS --------------]
[#assign headingElement = def.parameters.headingElement!"h2"]

[#assign title = content.title!]

[#-------------- RENDERING  --------------]]
<div>
	<${headingElement}>${title}</${headingElement}>
	[@cms.area name="cards" /]
</div>