import React, { Component } from 'react';
import { AppRegistry, Text, View } from 'react-native';

export default class Greeting extends Component {
  render() {
    const { name } = this.props;
    return (
      <Text>Hello {name}!</Text>
    );
  }
}
