import React, { Component } from 'react';
import { AppRegistry, Text, View, Button } from 'react-native';

// Cell in NewsFeedScreen that can select an article

export default class NewsFeedCell extends React.Component {
  // static navigationOptions = {
  //   title: 'News',
  // }

  render() {
    const { articleTitle } = this.props;
    return (
      <Button
        onPress={() => this.props.navigation.navigate('Article', {article: articleTitle})}
        title={`Go to ${articleTitle}`}
      />
    );
  }
}
