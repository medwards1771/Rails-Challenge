var Comment = React.createClass({
  render: function () {
    return (
      <div>
        <h4>{ this.props.name }</h4>
        <h4>{ this.props.email }</h4>
        <p>{ this.props.text }</p>
      </div>
    )
  }
});