import Component from '@glimmer/component';
import FileDropzone from 'ember-file-upload/components/file-dropzone';
import fileQueue from 'ember-file-upload/helpers/file-queue';
import { t } from 'ember-intl';
import Avatar from '../../../avatar';
import Instructions from './instructions';

export default class OpenToFilesUpload extends Component {
  <template>
    {{#let (fileQueue onFileAdded=this.uploadPhoto) as |queue|}}
      <FileDropzone
        @queue={{queue}}
        class='w-full aspect-square rounded-full border-dashed border-4 border-slate-400 flex items-center justify-center'
        as |dropzone|
      >

        {{#if dropzone.active}}
          <Instructions>
            {{t 'drag-and-drop.drop-now'}}
          </Instructions>
        {{else}}
          <div class='relative w-full aspect-square'>
            <div class='absolute top-0 left-0 w-full aspect-square'>
              <Avatar @file='/images/unicorn.webp' />
            </div>

            {{#if dropzone.supported}}
              <Instructions>
                {{t 'drag-and-drop.instructions'}}
              </Instructions>
            {{else}}
              <Instructions>
                <input type='file' {{queue.selectFile}} class='w-32' />
              </Instructions>
            {{/if}}

          </div>
        {{/if}}
      </FileDropzone>
    {{/let}}
  </template>
}
