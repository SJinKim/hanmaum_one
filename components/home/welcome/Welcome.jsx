import React from 'react'
import { View, Text, TextInput } from 'react-native'
import { useRouter } from 'expo-router'

import styles from './welcome.style'
import  { icons, SIZES } from '../../../constants'

const Welcome = () => {
  const router = useRouter()

  return (
    <View>
      <View style={styles.container}>
        <Text style={styles.userName}>Hello Someone</Text>
        <Text style={styles.welcomeMessage}>Todays Message</Text>
      </View>
      <View style={styles.searchContainer}>
        <View style={styles.searchWrapper}>
          <TextInput styles={styles.searchInput}></TextInput>
        </View>
      </View>
    </View>
  )
}

export default Welcome
