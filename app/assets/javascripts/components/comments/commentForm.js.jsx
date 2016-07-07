var CommentForm = React.createClass({
  handleSubmit: function ( event ) {
    event.preventDefault();

    var name = this.refs.name.getDOMNode().value.trim();
    var email = this.refs.email.getDOMNode().value.trim();
    var text = this.refs.text.getDOMNode().value.trim();

    // validate
    if (!name || !email || !text) {
      return false;
    }

    // submit
    var formData = $( this.refs.form.getDOMNode() ).serialize();
    this.props.onCommentSubmit( formData, this.props.form.action );

    // reset form
    this.refs.name.getDOMNode().value = "";
    this.refs.email.getDOMNode().value = "";
    this.refs.text.getDOMNode().value = "";
  },
  render: function () {
    return (
      <form ref="form" className="comment-form" action={ this.props.form.action } acceptCharset="UTF-8" method="post" onSubmit={ this.handleSubmit }>
        <p><input type="hidden" name={ this.props.form.csrf_param } value={ this.props.form.csrf_token } /></p>
        <p><input ref="name" name="comment[name]" placeholder="Your name" /></p>
        <p><input ref="email" name="comment[email]" placeholder="Your email" /></p>
        <p><textarea ref="text" name="comment[text]" placeholder="Write comment here" /></p>
        <p><input ref="post_id" type="hidden" name="comment[post_id]" value={ this.props.form.id } /></p>
        <p><button type="submit">Post comment</button></p>
      </form>
    )
  }
});