import { DirectUpload } from 'activestorage'

export class DirectFileUploader {
  constructor(file, url) {
    this.file = file
    this.upload = new DirectUpload(file, url, this)
  }

  start(cb) {
    this.upload.create((error, blob) => cb(error, blob))
  }
}
