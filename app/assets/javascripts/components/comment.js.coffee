@Comment = React.createClass
    render: ->
      React.DOM.tr null,
        React.DOM.td null, @props.comment.created_at
        React.DOM.td null, @props.comment.body