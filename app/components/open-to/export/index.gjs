import Component from '@glimmer/component';
import FileDropzone from 'ember-file-upload/components/file-dropzone';
import { inject as service } from '@ember/service';
import FileQueueService from 'ember-file-upload/services/file-queue';
import OpenToFilesPreview from 'open-to-dot-dot-dot/components/open-to/files/preview';
import OpenToFilesUpload from 'open-to-dot-dot-dot/components/open-to/files/upload';
import { t } from 'ember-intl';
import { Button } from '@frontile/buttons';
import domtoimage from 'dom-to-image-more';
import { action } from '@ember/object';
import { on } from '@ember/modifier';

export default class OpenToExport extends Component {
  @service fileQueue;

  get isExportDisabled() {
    return this.fileQueue.files.length === 0;
  }

  @action
  exportImages() {
    for (const file of this.fileQueue.files) {
      domtoimage
        .toJpeg(document.getElementById(file.id))
        .then(function (dataUrl) {
          var link = document.createElement('a');
          link.download = 'my-image-name.jpeg';
          link.href = dataUrl;
          link.click();
        });
    }
  }

  <template>
    {{#if this.isExportDisabled}}
      <Button @intent='primary' disabled>
        {{t 'export.button'}}
      </Button>
    {{else}}
      <Button @intent='primary' {{on 'click' this.exportImages}}>
        {{t 'export.button'}}
      </Button>

    {{/if}}
  </template>
}
