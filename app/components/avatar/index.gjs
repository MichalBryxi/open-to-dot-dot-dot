import Component from '@glimmer/component';
import AvatarImage from './image';
import AvatarBadge from './badge';

export default class OpenToFiles extends Component {
  <template>
    <div class='w-full h-full bg-white' id={{@id}}>
      <div class='w-full h-full rounded-full overflow-hidden relative'>
        <AvatarImage @file={{@file}} />
        <AvatarBadge />
      </div>
    </div>
  </template>
}
