var React = require('react');
var ReactDOM = require('react-dom');

//todo: dynamically generate the view tree
var views = {};
views.home = {};
views.home.index = require("./views/home/index.js");

window.App = {
  renderView: function(controller, action, model, target){
    var View = views[controller][action].default;
    ReactDOM.render(<View {...model}/>, target);
  }
};