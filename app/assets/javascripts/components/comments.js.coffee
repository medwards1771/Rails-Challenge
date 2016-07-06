@Comments = React.createClass
  getInitialState: ->
      comments: @props.data
    getDefaultProps: ->
      comments: []
  render: ->
    React.DOM.div
      className: 'comments'
      React.DOM.h2
        className: 'body'
        'Comments'
      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Created At'
            React.DOM.th null, 'Body'
        React.DOM.tbody null,
          for comment in @state.comments
            React.createElement Comment, key: comment.id, comment: comment

