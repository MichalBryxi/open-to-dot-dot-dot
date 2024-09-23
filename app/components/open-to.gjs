import Component from '@glimmer/component';
import FileDropzone from 'ember-file-upload/components/file-dropzone';
import { inject as service } from '@ember/service';
import FileQueueService from 'ember-file-upload/services/file-queue';
import { t } from 'ember-intl';

export default class OpenTo extends Component {
  @service fileQueue;

  url(file) {
    return URL.createObjectURL(file);
  }

  <template>
    <div class='mx-auto max-w-7xl px-4 sm:px-6 lg:px-8'>
      {{! We've used 3xl here, but feel free to try other max-widths based on your needs }}
      <div class='mx-auto max-w-3xl'>

        <div
          class='divide-y divide-gray-200 overflow-hidden rounded-lg bg-white shadow'
        >
          <div class='px-4 py-5 sm:px-6'>
            {{t 'application.name'}}
          </div>
          <div class='px-4 py-5 sm:p-6'>

            <FileDropzone @queue={{this.queue}} as |dropzone|>
              {{#if dropzone.active}}
                Drop to upload
              {{else if this.queue.files.length}}
                Uploading
                {{this.queue.files.length}}
                files. ({{this.queue.progress}}%)
              {{else}}
                <h4>Upload Images</h4>
                <p>
                  {{#if dropzone.supported}}
                    Drag and drop images onto this area to upload them
                  {{/if}}
                </p>
              {{/if}}
            </FileDropzone>
            {{! Content goes here }}

            {{log this.fileQueue.files}}
            {{#each this.fileQueue.files as |file|}}
              Hi:
              {{file}}
              <img src={{this.url file.file}} />
            {{/each}}

            {{! Content goes here }}
          </div>
        </div>
      </div>
    </div>
  </template>
}
