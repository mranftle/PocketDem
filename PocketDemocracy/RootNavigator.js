import React from 'react';
import { View, Text } from 'react-native';
import { TabNavigator, StackNavigator } from 'react-navigation';
import Ionicons from 'react-native-vector-icons/Ionicons';

const NewsFeed = require('./Screens/NewsFeed');

// const MyArticle = () => (
//   <View style={{ flex: 1, alignItems: 'center', justifyContent: 'center' }}>
//     <Text>My Article</Text>
//   </View>
// );

const NewsScreen = StackNavigator({
  News: {
    screen: NewsFeed,
  },
  Article: {
    path: 'articles/:article',
    screen: MyArticle,
  },
});



// const NewsScreen = () => (
//   <View>{ModalStack}</View>
// );

// Simplified version
// const NewsScreen = () => (
//   <View style={{ flex: 1, alignItems: 'center', justifyContent: 'center' }}>
//     <Text>News Screen</Text>
//   </View>
// );

const ActionsScreen = () => (
  <View style={{ flex: 1, alignItems: 'center', justifyContent: 'center' }}>
    <Text>Actions Screen</Text>
  </View>
);

const SearchScreen = () => (
  <View style={{ flex: 1, alignItems: 'center', justifyContent: 'center' }}>
    <Text>Seach Screen</Text>
  </View>
);

const FriendsScreen = () => (
  <View style={{ flex: 1, alignItems: 'center', justifyContent: 'center' }}>
    <Text>Friends Screen</Text>
  </View>
);

const ProfileScreen = () => (
  <View style={{ flex: 1, alignItems: 'center', justifyContent: 'center' }}>
    <Text>Profile Screen</Text>
  </View>
);

const RootTabs = TabNavigator({
  News: {
    screen: NewsScreen,
    navigationOptions: {
      tabBarLabel: 'News',
      tabBarIcon: ({ tintColor, focused }) => (
        <Ionicons
          name={focused ? 'ios-paper' : 'ios-paper-outline'}
          size={26}
          style={{ color: tintColor }}
        />
      ),
    },
  },
  Actions: {
    screen: ActionsScreen,
    navigationOptions: {
      tabBarLabel: 'Actions',
      tabBarIcon: ({ tintColor, focused }) => (
        <Ionicons
          name={focused ? 'ios-list' : 'ios-list-outline'}
          size={26}
          style={{ color: tintColor }}
        />
      ),
    },
  },
  Search: {
    screen: SearchScreen,
    navigationOptions: {
      tabBarLabel: 'Search',
      tabBarIcon: ({ tintColor, focused }) => (
        <Ionicons
          name={focused ? 'ios-search' : 'ios-search'}
          size={26}
          style={{ color: tintColor }}
        />
      ),
    },
  },
  Friends: {
    screen: FriendsScreen,
    navigationOptions: {
      tabBarLabel: 'Friends',
      tabBarIcon: ({ tintColor, focused }) => (
        <Ionicons
          name={focused ? 'ios-people' : 'ios-people-outline'}
          size={26}
          style={{ color: tintColor }}
        />
      ),
    },
  },
  Profile: {
    screen: ProfileScreen,
    navigationOptions: {
      tabBarLabel: 'Profile',
      tabBarIcon: ({ tintColor, focused }) => (
        <Ionicons
          name={focused ? 'ios-person' : 'ios-person-outline'}
          size={26}
          style={{ color: tintColor }}
        />
      ),
    },
  },
});

export default RootTabs;
