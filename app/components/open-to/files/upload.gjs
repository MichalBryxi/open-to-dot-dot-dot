import Component from '@glimmer/component';
import FileDropzone from 'ember-file-upload/components/file-dropzone';
import { t } from 'ember-intl';

export default class OpenToFiles extends Component {
  <template>
    <FileDropzone
      class='w-full h-full rounded-full border-dashed border-4 border-slate-400 px-8 py-6 flex items-center text-center'
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
  </template>
}
