import Component from '@glimmer/component';
import FileDropzone from 'ember-file-upload/components/file-dropzone';
// import fileQueue from 'ember-file-upload/helpers/file-queue';
import { t } from 'ember-intl';
// import { inject as service } from '@ember/service';

export default class OpenToFiles extends Component {
  // @service fileQueue;

  // uploadPhoto() {}

  <template>
    {{!-- {{#let (fileQueue name='foo' onFileAdded=this.uploadPhoto) as |queue|}} --}}
    {{!-- <input type='file' {{queue.selectFile}} /> --}}

    <FileDropzone
      {{!-- @queue={{queue}} --}}
      class='w-full h-full rounded-full border-dashed border-4 border-slate-400 px-8 py-6 flex items-center justify-center'
      as |dropzone|
    >

      {{#if dropzone.active}}
        {{t 'drag-and-drop.drop-now'}}
      {{else}}
        {{#if dropzone.supported}}
          {{t 'drag-and-drop.instructions'}}
        {{/if}}
      {{/if}}
    </FileDropzone>
    {{!-- {{/let}} --}}
  </template>
}
