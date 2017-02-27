command: "date +\"%a %d %b\""

refreshFrequency: 10000

render: (output) ->
  """
  <link rel="stylesheet" href="./nerdbar.widget/assets/font-awesome/css/font-awesome.min.css" />
  <div class="cal">
    <span></span>
  </div>
  """

update: (output, el) ->
    $(".cal span:first-child", el).text("  #{output}")

style: """
  -webkit-font-smoothing: antialiased
  color: #f8f8f8
  font: 14px Helvetica Neue 
  font-weight: 500
  right: 80px
  top: 4px
"""
