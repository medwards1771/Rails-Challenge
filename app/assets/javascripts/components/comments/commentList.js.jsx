var CommentList = React.createClass({
  render: function () {
    var commentNodes = this.props.comments.map(function ( comment ) {
      return <Comment name={ comment.name } email={ comment.email } text={ comment.text } key={ comment.id }></Comment>
    });

    return (
      <div className="comment-list">
        { commentNodes }
      </div>
    )
  }
});