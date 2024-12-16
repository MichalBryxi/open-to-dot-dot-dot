import Component from '@glimmer/component';
import FileDropzone from 'ember-file-upload/components/file-dropzone';
import fileQueue from 'ember-file-upload/helpers/file-queue';
import { t } from 'ember-intl';
import Avatar from '../../../avatar';
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

        <div class='relative w-full aspect-square'>
          <div class='absolute top-0 left-0 w-full aspect-square'>
            <Avatar
              class='border-dashed border-4
                {{if dropzone.active "border-emerald-500" "border-slate-400"}}'
              @file='/images/unicorn.webp'
            />
          </div>

          <div
            class='relative top-0 left-0 w-full aspect-square text-center flex justify-center items-center'
          >
            <Button
              @intent='primary'
              {{on 'click' this.toggleFileSelector}}
              class='{{if
                  dropzone.active
                  "bg-gradient-to-r from-indigo-500 from-10% via-sky-500 via-30% to-emerald-500 to-90%"
                }}'
            >
              {{#if dropzone.active}}
                {{t 'drag-and-drop.drop-now'}}
              {{else}}
                {{t 'drag-and-drop.instructions'}}
                <input
                  id='file-input'
                  type='file'
                  {{queue.selectFile}}
                  class='hidden'
                />
              {{/if}}
            </Button>
          </div>
        </div>
      </FileDropzone>
    {{/let}}
  </template>
}
