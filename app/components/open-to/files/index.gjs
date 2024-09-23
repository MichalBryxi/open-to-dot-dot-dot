import Component from '@glimmer/component';
import FileDropzone from 'ember-file-upload/components/file-dropzone';
import { inject as service } from '@ember/service';
import FileQueueService from 'ember-file-upload/services/file-queue';
import OpenToFilesPreview from 'open-to-dot-dot-dot/components/open-to/files/preview';
import OpenToFilesUpload from 'open-to-dot-dot-dot/components/open-to/files/upload';
import { t } from 'ember-intl';

export default class OpenToFiles extends Component {
  @service fileQueue;

  <template>
    <ul
      role='list'
      class='grid grid-cols-1 gap-x-4 gap-y-8 sm:grid-cols-2 sm:gap-x-6'
    >
      {{#each this.fileQueue.files as |file|}}
        <li>
          <div class='mx-auto w-64 h-64 relative bg-white'>
            <OpenToFilesPreview @file={{file}} />
          </div>
        </li>
      {{/each}}
      <li>
        <div class='mx-auto w-64 h-64 relative'>
          <OpenToFilesUpload />
        </div>
      </li>
    </ul>
  </template>
}
