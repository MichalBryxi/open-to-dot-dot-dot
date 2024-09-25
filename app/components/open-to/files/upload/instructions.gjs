import Component from '@glimmer/component';

export default class OpenToFilesUploadInstructions extends Component {
  <template>
    <div
      class='absolute top-0 left-0 w-full aspect-square text-center flex justify-center items-center'
    >
      {{yield}}
    </div>
  </template>
}
