scroll = new ScrollComponent
	scrollHorizontal: false 
	width: 1280
	height: 720
homePage.parent = scroll.content 

layerA = new Layer
	width: 1280
	height: 161
	backgroundColor: "#ffffff"
	visible: false

Menu.bringToFront()

scroll.on Events.Scroll, ->
	if scroll.scrollY > 75
		layerA.visible = true 
	else
		layerA.visible = false