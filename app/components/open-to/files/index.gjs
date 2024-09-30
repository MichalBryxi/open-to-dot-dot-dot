import Component from '@glimmer/component';
import FileDropzone from 'ember-file-upload/components/file-dropzone';
import OpenToFilesPreview from 'open-to-dot-dot-dot/components/open-to/files/preview';
import fileQueue from 'ember-file-upload/helpers/file-queue';
import OpenToFilesUpload from 'open-to-dot-dot-dot/components/open-to/files/upload';
import { t } from 'ember-intl';

export default class OpenToFiles extends Component {
  <template>
    {{#let (fileQueue onFileAdded=this.uploadPhoto) as |queue|}}
      <ul role='list' class='grid grid-cols-1 gap-x-4 gap-y-8 sm:gap-x-6'>
        {{#each queue.files as |file|}}
          <li>
            <div class='mx-auto w-full aspect-square relative'>
              <OpenToFilesPreview @file={{file}} />
            </div>
          </li>
        {{else}}
          <li>
            <div class='mx-auto w-full aspect-square relative'>
              <OpenToFilesUpload />
            </div>
          </li>

        {{/each}}
      </ul>
    {{/let}}
  </template>
}
