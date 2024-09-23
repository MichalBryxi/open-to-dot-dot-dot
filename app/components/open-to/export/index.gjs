import Component from '@glimmer/component';
import FileDropzone from 'ember-file-upload/components/file-dropzone';
import { inject as service } from '@ember/service';
import FileQueueService from 'ember-file-upload/services/file-queue';
import OpenToFilesPreview from 'open-to-dot-dot-dot/components/open-to/files/preview';
import OpenToFilesUpload from 'open-to-dot-dot-dot/components/open-to/files/upload';
import { t } from 'ember-intl';
import { Button } from '@frontile/buttons';

export default class OpenToExport extends Component {
  @service fileQueue;

  get isExportDisabled() {
    console.log(this.fileQueue.files);
    return this.fileQueue.files.length === 0;
  }

  <template>
    {{#if this.isExportDisabled}}
      <Button @intent='primary' disabled>
        {{t 'export.button'}}
      </Button>
    {{else}}
      <Button @intent='primary'>
        {{t 'export.button'}}
      </Button>

    {{/if}}
  </template>
}
