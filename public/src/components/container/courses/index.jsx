import React, { Component } from "react";

class Courses extends Component {
  constructor() {
    super();

    this.state = {
      seo_title: ""
    };
    this.handleChange = this.handleChange.bind(this);
  }

  handleChange(event) {
    this.setState({ [event.target.id]: event.target.value });
  }

  render() {
    return (
      <h1> hello world </h1>
    );
  }
}
export default Courses;

