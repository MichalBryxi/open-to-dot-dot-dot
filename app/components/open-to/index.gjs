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
              <span
                class='tracking-wider text-3xl font-black bg-clip-text text-transparent bg-gradient-to-r from-indigo-500 from-10% via-sky-500 via-30% to-emerald-500 to-90%'
              >
                {{t 'application.name'~}}
              </span>
            </div>
            <div>
              <span class='font-light text-gray-500'>
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
