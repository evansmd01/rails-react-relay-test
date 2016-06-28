import React from "react"

var View = React.createClass({
  render: function(){
    return (
        <p>{this.props.message}, I'm the react view</p>
    )
  }
});

export default View;