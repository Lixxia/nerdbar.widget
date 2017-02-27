command: "date +\"%I:%M %p\""

refreshFrequency: 10000 # ms

render: (output) ->
  """
  <div class="time">
    <span></span>
  </div>
  """

update: (output, el) ->
    $(".time span:first-child", el).text("  #{output}")
    $icon = $(".time span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-clock-o")

style: """
  -webkit-font-smoothing: antialiased
  color: #f8f8f8
  font: 14px Helvetica Neue
  font-weight: 500
  right: 10px
  top: 4px
"""
