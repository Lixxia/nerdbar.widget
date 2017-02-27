command: "pmset -g batt | grep -o '[0-9]*%; [a-z]*'"

refreshFrequency: 15000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./nerdbar.widget/assets/font-awesome/css/font-awesome.min.css" />
  <div class="battery">
    <span></span>
    <span class="icon"></span>
    <span class="icon2"></span>
  </div>
  """

update: (output, el) ->
    values = output.split(";")
    percent = values[0]
    status = values[1]
    bat = parseInt(percent)
    $(".battery span:first-child", el).text("  #{percent}")
    $icon = $(".battery span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa #{@icon(bat)}")
    $icon2 = $(".battery span.icon2", el)
    $icon2.removeClass().addClass("icon2")
    $icon2.addClass("fa #{@icon2(status)}")

icon: (output) =>
  return if output > 90
    "fa-battery-full"
  else if output > 70
    "fa-battery-three-quarters"
  else if output > 40
    "fa-battery-half"
  else if output > 20
    "fa-battery-quarter"
  else
    "fa-battery-empty"

icon2: (output) =>
  return if output.substring(0,4) == " cha"
    "fa-bolt"
  else
    "icon-blank"

style: """
  -webkit-font-smoothing: antialiased
  font: 14px Helvetica Neue
  font-weight: 500
  top: 4px
  right: 160px
  color: #f8f8f8

  .icon-blank
    width: 0.5em
    content: ' '

  .icon
    font-size: 14px
    position: relative
    top: 1px

  .icon2
    text-shadow: -1px 0 #202020, 0 1px #202020, 1px 0 #202020, 0 -1px #202020
    font-size: 14px
    position: relative
    top: 1px
    right: 17px
"""
