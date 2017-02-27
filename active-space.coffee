command: "/usr/local/bin/kwmc query space active name | tr -d '[]' | tr -d ' '"

refreshFrequency: 500 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./nerdbar.widget/assets/font-awesome/css/font-awesome.min.css" />
  <div class="ac">
    <span></span>
    <span class="notag"></span>
    <span class="home fa fa-chrome"></span>
    <span class="term fa fa-terminal"></span>
    <span class="work fa fa-tasks"></span>
    <span class="mail fa fa-envelope"></span>
  </div>
  """

update: (output, el) ->
    $(el).find('.current').removeClass('current')
    $active = $(".ac span.#{output}", el)
    $active.addClass('current')

style: """
  -webkit-font-smoothing: antialiased
  text-align: left
  color: #8c8c8c
  font: 14px Helvetica Neue
  font-weight: 500
  height: 16px
  left: -3px 
  top: 0px
  width: 50%

  span 
    padding: 4px 7px 0px 7px

  .work
    position: relative
    top: 1px

  .notag
    display: none

  .current
    color: #f8f8f8
    background-color: rgba(32,32,32,0.5)
    border-top: 2px solid white
    height: 13px
    padding: 4px 7px 5px 7px
"""
