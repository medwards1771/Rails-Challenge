var CommentBox = React.createClass({
  getInitialState: function () {
    return JSON.parse(this.props.presenter);
  },

  handleCommentSubmit: function ( formData, action ) {
    $.ajax({
      data: formData,
      url: action,
      type: "POST",
      dataType: "json",
      success: function (data) {
        comments = this.getInitialState().comments.concat(data.comment);
        this.setState({ comments: comments });
      }.bind(this),
      error: function(data) {
        for (i = 0; i < data.responseJSON.errors.length; i++) {
          $('.comment-form').addClass('alert alert-danger').append(data.responseJSON.errors[i]);
        }
      }
    });
  },

  render: function () {
    return (
      <div className="comment-box">
        <CommentList comments={ this.state.comments } />
        <hr />
        <h2>Add a comment</h2>
        <CommentForm form={ this.state.form } onCommentSubmit={ this.handleCommentSubmit } />
      </div>
    );
  }
});