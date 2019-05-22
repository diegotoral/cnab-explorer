/* eslint no-console:0 */

import 'bulma'

import Vue from 'vue/dist/vue.esm'
import FileUploader from '../components/FileUploader'

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: '#app',

    components: {
      FileUploader,
    },
  })
})
