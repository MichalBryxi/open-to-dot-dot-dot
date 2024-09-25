import Component from '@glimmer/component';
import Avatar from '../../avatar';

export default class OpenToFiles extends Component {
  objectURL(file) {
    return URL.createObjectURL(file);
  }

  <template>
    <Avatar @file={{this.objectURL @file.file}} @id={{@file.id}} />
  </template>
}
