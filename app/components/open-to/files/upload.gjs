import Component from '@glimmer/component';
import FileDropzone from 'ember-file-upload/components/file-dropzone';
// import fileQueue from 'ember-file-upload/helpers/file-queue';
import { t } from 'ember-intl';
// import { inject as service } from '@ember/service';
import Avatar from '../../avatar';

export default class OpenToFiles extends Component {
  // @service fileQueue;

  // uploadPhoto() {}

  <template>
    {{!-- {{#let (fileQueue name='foo' onFileAdded=this.uploadPhoto) as |queue|}} --}}
    {{!-- <input type='file' {{queue.selectFile}} /> --}}

    <FileDropzone
      {{!-- @queue={{queue}} --}}
      class='w-full aspect-square rounded-full border-dashed border-4 border-slate-400 px-8 py-6 flex items-center justify-center'
      as |dropzone|
    >

      {{#if dropzone.active}}
        {{t 'drag-and-drop.drop-now'}}
      {{else}}
        <div class='relative w-full aspect-square'>
          <div class='absolute top-0 left-0 w-full aspect-square'>
            <Avatar @file='/images/unicorn.webp' />
          </div>
          <div class='absolute top-0 left-0 w-full aspect-square text-center'>
            {{#if dropzone.supported}}
              {{t 'drag-and-drop.instructions'}}
            {{/if}}
          </div>
        </div>
      {{/if}}
    </FileDropzone>
    {{!-- {{/let}} --}}
  </template>
}
