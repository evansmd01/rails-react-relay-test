import React from "react"

class View extends React.Component {
  render() {
    return (
        <p>Hey {this.props.user}, I'm the react users#index view</p>
    )
  }
}

export default View;