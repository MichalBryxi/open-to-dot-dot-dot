import Component from '@glimmer/component';
import GitHubLogo from 'ember-phosphor-icons/components/ph-github-logo';
import LinkedInLogo from 'ember-phosphor-icons/components/ph-linkedin-logo';
import Mailbox from 'ember-phosphor-icons/components/ph-mailbox';
import TipJar from 'ember-phosphor-icons/components/ph-tip-jar';
import Stamp from 'ember-phosphor-icons/components/ph-stamp';
import UserCheck from 'ember-phosphor-icons/components/ph-user-check';
import Chat from 'ember-phosphor-icons/components/ph-chat-centered-dots';
import Coins from 'ember-phosphor-icons/components/ph-coins';
import Detective from 'ember-phosphor-icons/components/ph-detective';
import AboutItem from './item';
import { inject as service } from '@ember/service';

export default class About extends Component {
  @service intl;

  get items() {
    return [
      {
        label: this.intl.t('about.idea.label'),
        icon: Chat,
        description: this.intl.t('about.idea.description'),
      },
      {
        label: this.intl.t('about.pricing.label'),
        icon: Coins,
        description: this.intl.t('about.pricing.description'),
      },
      {
        label: this.intl.t('about.privacy.label'),
        icon: Detective,
        description: this.intl.t('about.privacy.description'),
      },
      {
        href: 'https://www.linkedin.com/posts/courtneysummer_desperate-opentowork-opentowork-activity-7241410975193513984-vexX?utm_source=share&utm_medium=member_desktop',
        label: this.intl.t('about.original.label'),
        icon: UserCheck,
        description: this.intl.t('about.original.description'),
      },
      {
        href: 'mailto:michal.bryxi@gmail.com?subject=%23OpenTo...%20feedback&body=Hello%20there%2C%0A%0AI%20wanted%20to%20let%20you%20know%20that%20%23OpenTo...%20%5Byour%20text%20here%5D.%0A%0AHave%20a%20nice%20day!',
        label: this.intl.t('about.feedback.label'),
        icon: Mailbox,
        description: this.intl.t('about.feedback.description'),
      },
      {
        href: 'https://buymeacoffee.com/michalbryxi',
        label: this.intl.t('about.buy-me-a-coffee.label'),
        icon: TipJar,
        description: this.intl.t('about.buy-me-a-coffee.description'),
      },
      {
        href: 'https://github.com/MichalBryxi/open-to-dot-dot-dot',
        label: this.intl.t('about.github.label'),
        icon: GitHubLogo,
        description: this.intl.t('about.github.description'),
      },
      {
        href: 'https://opensource.org/license/MIT',
        label: this.intl.t('about.license.label'),
        icon: Stamp,
        description: this.intl.t('about.license.description'),
      },
    ];
  }

  <template>
    <div class='px-4 py-5 sm:px-6'>

      <div class='mt-6 border-t border-gray-100'>
        <dl class='divide-y divide-gray-100'>
          {{#each this.items as |item|}}
            <AboutItem @item={{item}} />
          {{/each}}
        </dl>
      </div>

    </div>
  </template>
}
