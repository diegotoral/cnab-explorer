<template>
  <div class="file-uploader">
    <div
      v-if="!isUploading"
      class="file is-primary is-small is-centered"
    >
      <label class="file-label">
        <input
          class="file-input"
          type="file"
          name="file"
          @change="onChange"
        >

        <span class="file-cta">
          <span class="file-icon">
            <i class="fas fa-upload"></i>
          </span>
          <span class="file-label">
            Upload a file to begin
          </span>
        </span>
      </label>
    </div>

    <button
      v-if="isUploading"
      class="button is-primary is-small is-loading"
    />
  </div>
</template>

<script>
  import consumer from '../util/consumer'
  import { DirectFileUploader } from '../util/upload'

  export default {
    data() {
      return {
        isUploading: false,
      }
    },

    methods: {
      onChange(e) {
        const file = e.target.files[0]
        const uploader = new DirectFileUploader(file, '/rails/active_storage/direct_uploads')

        this.isUploading = true

        uploader.start((error, { signed_id }) => {
          if (error)
            console.error('Failed to upload file', error)

          this.createImportation(signed_id)
        })
      },

      createImportation(id) {
        const component = this

        consumer.subscriptions.create('ImportationChannel', {
          connected() {
            this.perform('create', { file_id: id })
          },

          disconnected() {
           component.isUploading = false
         },

         rejected() {
           component.isUploading = false
         },

         received(data) {
          // Redirect user to importation page.
          // window.location.replace(data.redirect_url)
          console.log(data.redirect_url)
          window.location.href = data.redirect_url
         },
       })
      },
    },
  }
</script>

