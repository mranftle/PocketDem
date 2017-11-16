import React, { Component } from 'react';
import { AppRegistry, Text, View, Button } from 'react-native';

// TableView of news stories

export default class NewsFeedScreen extends React.Component {
  static navigationOptions = {
    title: 'News',
  }

  render() {
    const articleTitle = 'Hailing in St. Louis';
    return (
      <Button
        onPress={() => this.props.navigation.navigate('Article', {article: articleTitle})}
        title={`Go to ${articleTitle}`}
      />
    );
  }
}
