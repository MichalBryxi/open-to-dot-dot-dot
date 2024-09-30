import Component from '@glimmer/component';
import FileDropzone from 'ember-file-upload/components/file-dropzone';
import fileQueue from 'ember-file-upload/helpers/file-queue';
import { t } from 'ember-intl';
import Avatar from '../../../avatar';
import Instructions from './instructions';
import { action } from '@ember/object';
import { on } from '@ember/modifier';
import { Button } from '@frontile/buttons';

export default class OpenToFilesUpload extends Component {
  @action
  toggleFileSelector() {
    // This is quite an ugly hack, but ... it works :shrug:
    document.querySelector('#file-input').click();
  }

  <template>
    {{#let (fileQueue onFileAdded=this.uploadPhoto) as |queue|}}
      <FileDropzone @queue={{queue}} class='' as |dropzone|>

        {{#if dropzone.active}}
          <Instructions>
            <span
              class='text-xl font-black shadow-md text-white bg-gradient-to-r from-indigo-500 from-10% via-sky-500 via-30% to-emerald-500 to-90% px-6 py-2 rounded-lg'
            >
              {{t 'drag-and-drop.drop-now'}}
            </span>
          </Instructions>
        {{else}}
          <div class='relative w-full aspect-square'>
            <div class='absolute top-0 left-0 w-full aspect-square'>
              <Avatar
                class='border-dashed border-4 border-slate-400'
                @file='/images/unicorn.webp'
              />
            </div>

            <Instructions>
              <Button @intent='primary' {{on 'click' this.toggleFileSelector}}>
                {{t 'drag-and-drop.instructions'}}
                <input
                  id='file-input'
                  type='file'
                  {{queue.selectFile}}
                  class='hidden'
                />
              </Button>
            </Instructions>
          </div>
        {{/if}}
      </FileDropzone>
    {{/let}}
  </template>
}
