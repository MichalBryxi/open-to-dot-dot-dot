import Component from '@glimmer/component';
import FileDropzone from 'ember-file-upload/components/file-dropzone';
import { inject as service } from '@ember/service';
import FileQueueService from 'ember-file-upload/services/file-queue';
import OpenToFilesPreview from 'open-to-dot-dot-dot/components/open-to/files/preview';
import OpenToFilesUpload from 'open-to-dot-dot-dot/components/open-to/files/upload';
import { t } from 'ember-intl';
import { Button } from '@frontile/buttons';
import { action } from '@ember/object';
import { on } from '@ember/modifier';
import html2canvas from '@jsplumb/html2canvas';

export default class OpenToExport extends Component {
  @service fileQueue;
  @service settings;

  get isExportDisabled() {
    return this.fileQueue.files.length === 0;
  }

  @action
  exportImages() {
    for (const file of this.fileQueue.files) {
      html2canvas(document.getElementById(file.id), {
        backgroundColor: null,
      }).then((canvas) => {
        var link = document.createElement('a');
        link.download = `${this.settings.text}.png`;
        link.href = canvas.toDataURL('image/png');
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
