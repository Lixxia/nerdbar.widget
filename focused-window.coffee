command: "echo $(/usr/local/bin/kwmc query space active tag | cut -d' ' -f 2-)"

refreshFrequency: 1000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./nerdbar.widget/assets/font-awesome/css/font-awesome.min.css" />
  <div class="foc">
    <span></span>
  </div>
  """

update: (output, el) ->
    $(".foc span:first-child", el).text("  #{output}")

style: """
  -webkit-font-smoothing: antialiased
  color: #f8f8f8
  font: 14px Helvetica Neue
  font-weight: 500 
  text-align: center
  height: 21px
  left: 25% 
  overflow: hidden
  text-overflow: ellipsis
  top: 5px
  width: 50% 
"""
