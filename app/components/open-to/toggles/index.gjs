import Component from '@glimmer/component';
import FileDropzone from 'ember-file-upload/components/file-dropzone';
import { t } from 'ember-intl';
import { Input } from '@frontile/forms';
import { inject as service } from '@ember/service';
import set from 'ember-set-helper/helpers/set';
import { hash } from '@ember/helper';
import { ToggleButton } from '@frontile/buttons';
import Circle from 'ember-phosphor-icons/components/ph-circle';
import Square from 'ember-phosphor-icons/components/ph-square';
import { Checkbox } from '@frontile/forms';
import { ButtonGroup } from '@frontile/buttons';
import { fn } from '@ember/helper';
import { not } from 'ember-truth-helpers';
import { RadioGroup } from '@frontile/forms';
import { Radio } from '@frontile/forms';

export default class OpenToToggles extends Component {
  @service settings;

  <template>
    <form class='grid grid-cols-1 sm:grid-cols-3 gap-4 items-end'>
      <Input
        @type='text'
        @label={{t 'toggles.text'}}
        @value={{this.settings.text}}
        @onInput={{set this.settings 'text'}}
      />
      <Input
        @type='color'
        @label={{t 'toggles.colour-start'}}
        @value={{this.settings.colourStart}}
        @onChange={{set this.settings 'colourStart'}}
        @classes={{hash input='p-1 h-11'}}
      />
      <Input
        @type='color'
        @label={{t 'toggles.colour-stop'}}
        @value={{this.settings.colourStop}}
        @onChange={{set this.settings 'colourStop'}}
        @classes={{hash input='p-1 h-11'}}
      />
      <RadioGroup
        @label={{t 'toggles.crop-to-circle'}}
        @orientation='horizontal'
        @value={{this.settings.cropToCircle}}
        @onChange={{set this.settings 'cropToCircle'}}
        as |Radio|
      >
        <Radio @label={{t 'toggles.crop-to.circle'}} @value={{true}} />
        <Radio @label={{t 'toggles.crop-to.square'}} @value={{false}} />
      </RadioGroup>
      <Input
        @type='color'
        @label={{t 'toggles.background-colour'}}
        @value={{this.settings.backgroundColour}}
        @onChange={{set this.settings 'backgroundColour'}}
        @classes={{hash input='p-1 h-11'}}
      />
      <Input
        @type='range'
        @label={{t 'toggles.text-offset'}}
        @value={{this.settings.textOffset}}
        @onInput={{set this.settings 'textOffset'}}
        min='0'
        max='200'
      />
    </form>
  </template>
}
