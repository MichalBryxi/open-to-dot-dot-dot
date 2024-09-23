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
    domtoimage.toBlob(document.getElementById('my-node')).then(function (blob) {
      window.saveAs(blob, 'my-node.png');
    });
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
