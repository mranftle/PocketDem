import React from 'react';
import { StyleSheet, Text, View } from 'react-native';
// import { RootNavigator } from 'RootNavigator';
// import Greeting from './Hello';

const RootNavigator = require('./RootNavigator').default;
const Greeting = require('./Hello').default;

export default class App extends React.Component {
  render() {
    return (
      // <View style={styles.container}>
      //   <Greeting name='Fuck' />
      //   <Text>Open up App.js to start working on your app!</Text>
      //   <Text>Changes you make will automatically reload.</Text>
      //   <Text>Shake your phone to open the developer menu.</Text>
      // </View>
      <RootNavigator />
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
