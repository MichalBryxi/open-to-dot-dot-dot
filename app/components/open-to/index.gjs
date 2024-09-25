import Component from '@glimmer/component';
import { t } from 'ember-intl';
import OpenToFiles from './files';
import OpenToToggles from './toggles';
import OpenToExport from './export';
import Footer from '../footer';

export default class OpenTo extends Component {
  <template>
    <div class='mx-auto max-w-7xl px-4 sm:px-6 lg:px-8'>
      <div class='mx-auto max-w-3xl'>

        <div
          class='divide-y divide-gray-200 overflow-hidden rounded-lg bg-white shadow'
        >
          <div class='px-4 py-5 sm:px-6'>
            <div>
              <span class='text-3xl font-black'>
                {{t 'application.name'~}}
              </span>
            </div>
            <div>
              <span class='text-xs font-light text-gray-500'>
                {{t 'application.subtitle'}}
              </span>
            </div>
          </div>

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
        </div>

      </div>
    </div>
  </template>
}
