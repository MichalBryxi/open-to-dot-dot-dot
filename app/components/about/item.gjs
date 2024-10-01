import Component from '@glimmer/component';
import GitHubLogo from 'ember-phosphor-icons/components/ph-github-logo';
import LinkedInLogo from 'ember-phosphor-icons/components/ph-linkedin-logo';
import Mailbox from 'ember-phosphor-icons/components/ph-mailbox';
import TipJar from 'ember-phosphor-icons/components/ph-tip-jar';
import { t } from 'ember-intl';

export default class AboutItem extends Component {
  <template>
    <div class='px-4 py-6 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-0'>
      <dt class='text-sm font-medium leading-6'>
        <@item.icon class='inline w-10 h-10 mr-2 text-purple-600' />
        {{#if @item.href}}
          <a
            href='{{@item.href}}'
            class='pr-6 text-emerald-500 font-bold underline'
            target='_blank'
          >
            {{@item.label}}
          </a>
        {{else}}

          {{@item.label}}
        {{/if}}

      </dt>
      <dd class='mt-1 text-sm leading-6 text-gray-700 sm:col-span-2 sm:mt-0'>
        {{@item.description}}
      </dd>
    </div>
  </template>
}
