import Component from '@glimmer/component';

export default class OpenToFiles extends Component {
  <template>
    <img src={{@file}} class='w-full aspect-square relative' />
  </template>
}
