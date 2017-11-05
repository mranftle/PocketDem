import React, { Component } from 'react';
import { AppRegistry, Text, View, Button } from 'react-native';

export default class NewsFeed extends React.Component {
  static navigationOptions = {
    title: 'News',
  }

  render() {
    return (
      <Button
        onPress={() => this.props.navigation.navigate('Article', {article: 'Hailing in St. Louis'})}
        title="Go to story"
      />
    );
  }
}
