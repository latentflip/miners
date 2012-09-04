$ ->
  canvas = $('canvas')[0]

  canvas.width = 1000
  canvas.height = 500


  stage = new createjs.Stage(canvas)
  container = new createjs.Container()

  stage.height = 1000
  stage.width = 1000
  container.x = 0
  container.rotation = 0

  shape = new createjs.Shape(
    new createjs.Graphics().beginFill("#999").drawRect(0,0,50,50)
  )

  bitmap = new createjs.Bitmap("/img/char.jpeg")
  bitmap.x = 0
  bitmap.y = 5

  text = new createjs.Text("Hello World", "24px Arial", "#990000")
  text.x = 200

  container.addChild(shape, bitmap, text)
  stage.addChild(container)


  updateImage = ->
    text.x = Math.floor(Math.random() * 200)
    stage.update()

  createjs.Ticker.addListener updateImage

