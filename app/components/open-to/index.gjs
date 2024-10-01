import Component from '@glimmer/component';
import { t } from 'ember-intl';
import OpenToFiles from './files';
import OpenToToggles from './toggles';
import OpenToExport from './export';
import Footer from '../footer';

export default class OpenTo extends Component {
  <template>
    <div class='px-4 py-5 sm:px-6'>
      <div class='px-4 py-5 sm:p-6'>
        <OpenToFiles />
      </div>
    </div>

    <div class='px-4 py-5 sm:px-6'>
      <OpenToToggles />
    </div>

    <div class='px-4 py-5 sm:px-6'>
      <OpenToExport />
    </div>

    <div class='px-4 py-5 sm:px-6'>
      <Footer />
    </div>
  </template>
}
