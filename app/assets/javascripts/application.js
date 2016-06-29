var React = require('react');
var ReactDOM = require('react-dom');
var routes = require('./views/react-routes.js');

window.App = {
  renderView: function(controller, action, model, target){
    var View = routes.default[controller][action].default;
    ReactDOM.render(<View {...model}/>, target);
  }
};