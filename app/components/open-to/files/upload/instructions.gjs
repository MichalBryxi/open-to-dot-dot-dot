import Component from '@glimmer/component';

export default class OpenToFilesUploadInstructions extends Component {
  <template>
    <div
      class='absolute top-0 left-0 w-full aspect-square text-center flex justify-center items-center'
    >
      <span
        class='text-3xl font-black shadow-md text-white bg-gradient-to-r from-indigo-500 from-10% via-sky-500 via-30% to-emerald-500 to-90% px-6 py-2 rounded-lg'
      >
        {{yield}}
      </span>
    </div>
  </template>
}
