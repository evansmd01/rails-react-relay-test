import React from "react"

var View = React.createClass({
  render: function(){
    return (
        <p>{this.props.message} :)</p>
    )
  }
});

export default View;