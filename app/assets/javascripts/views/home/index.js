import React from "react"

class View extends React.Component {
  render() {
    return (
        <p>{this.props.message}, I'm the react home#index view</p>
    )
  }
}

export default View;