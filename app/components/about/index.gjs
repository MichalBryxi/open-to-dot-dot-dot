import Component from '@glimmer/component';
import GitHubLogo from 'ember-phosphor-icons/components/ph-github-logo';
import LinkedInLogo from 'ember-phosphor-icons/components/ph-linkedin-logo';
import TipJar from 'ember-phosphor-icons/components/ph-tip-jar';
import { t } from 'ember-intl';

export default class About extends Component {
  <template>
    <a
      href='https://github.com/MichalBryxi/open-to-dot-dot-dot'
      class='pr-6 text-gray-500 hover:text-black'
      target='_blank'
    >
      <GitHubLogo class='inline' />
      {{t 'footer.github'}}
    </a>
    <a
      href='https://www.linkedin.com/posts/courtneysummer_desperate-opentowork-opentowork-activity-7241410975193513984-vexX?utm_source=share&utm_medium=member_desktop'
      class='pr-6 text-gray-500 hover:text-black'
      target='_blank'
    >
      <LinkedInLogo class='inline' />
      {{t 'footer.linked-in'}}
    </a>
    <a
      href='https://buymeacoffee.com/michalbryxi'
      class='pr-6 text-gray-500 hover:text-black'
      target='_blank'
    >
      <TipJar class='inline' />
      {{t 'footer.tip-jar'}}
    </a>
  </template>
}
