import Component from '@glimmer/component';
import AvatarImage from './image';
import AvatarBadge from './badge';
import { inject as service } from '@ember/service';

export default class OpenToFiles extends Component {
  @service settings;

  <template>
    <div
      class='w-full aspect-square'
      id={{@id}}
      style='
        background-color: {{if
        this.settings.backgroundColour
        this.settings.backgroundColour
      }}'
    >
      <div
        class='w-full aspect-square
          {{if this.settings.cropToCircle "rounded-full"}}
          overflow-hidden relative'
        ...attributes
      >
        <AvatarImage @file={{@file}} />
        <AvatarBadge />
      </div>
    </div>
  </template>
}
