import Component from '@glimmer/component';
import GitHubLogo from 'ember-phosphor-icons/components/ph-github-logo';
import LinkedInLogo from 'ember-phosphor-icons/components/ph-linkedin-logo';
import Mailbox from 'ember-phosphor-icons/components/ph-mailbox';
import TipJar from 'ember-phosphor-icons/components/ph-tip-jar';
import { t } from 'ember-intl';

export default class About extends Component {
  <template>
    <div class='px-4 py-5 sm:px-6'>
      <ul role='list' class='space-y-3'>
        <li class='overflow-hidden rounded-md bg-white px-6 py-4 shadow'>
          <a
            href='https://github.com/MichalBryxi/open-to-dot-dot-dot'
            class='pr-6 text-gray-500 hover:text-black'
            target='_blank'
          >
            <GitHubLogo class='inline' />
            {{t 'footer.github'}}
          </a>
        </li>

        <li class='overflow-hidden rounded-md bg-white px-6 py-4 shadow'>
          <a
            href='https://www.linkedin.com/posts/courtneysummer_desperate-opentowork-opentowork-activity-7241410975193513984-vexX?utm_source=share&utm_medium=member_desktop'
            class='pr-6 text-gray-500 hover:text-black'
            target='_blank'
          >
            <LinkedInLogo class='inline' />
            {{t 'footer.linked-in'}}
          </a>
        </li>

        <li class='overflow-hidden rounded-md bg-white px-6 py-4 shadow'>
          <a
            href='https://buymeacoffee.com/michalbryxi'
            class='pr-6 text-gray-500 hover:text-black'
            target='_blank'
          >
            <TipJar class='inline' />
            {{t 'footer.tip-jar'}}
          </a>
        </li>

        <li class='overflow-hidden rounded-md bg-white px-6 py-4 shadow'>
          <a
            href='https://buymeacoffee.com/michalbryxi'
            class='pr-6 text-gray-500 hover:text-black'
            target='_blank'
          >
            <TipJar class='inline' />
            {{t 'footer.tip-jar'}}
          </a>
        </li>
      </ul>

    </div>
  </template>
}
