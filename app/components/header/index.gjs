import Component from '@glimmer/component';
import Info from 'ember-phosphor-icons/components/ph-info';
import House from 'ember-phosphor-icons/components/ph-house';
import { t } from 'ember-intl';
import { ToggleButton } from '@frontile/buttons';
import { tracked } from '@glimmer/tracking';
import { LinkTo } from '@ember/routing';

export default class Header extends Component {
  <template>
    <div class='flex flex-row justify-between'>
      <div>
        <div>
          <LinkTo
            @route='index'
            @activeClass='bg-clip-text text-transparent bg-gradient-to-r from-indigo-500 from-10% via-sky-500 via-30% to-emerald-500 to-90%'
            class='tracking-wider text-3xl font-black underline'
          >
            {{t 'application.name'}}
          </LinkTo>
        </div>
        <div>
          <span class='font-light text-gray-500'>
            {{t 'application.subtitle'}}
          </span>
        </div>
      </div>

      <div>
        <LinkTo
          @route='about'
          @class='text-gray-500'
          @activeClass='text-emerald-500'
        >
          <Info @weight='duotone' class='w-8 h-8' />
        </LinkTo>
      </div>
    </div>
  </template>
}
