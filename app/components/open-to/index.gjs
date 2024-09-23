import Component from '@glimmer/component';
import FileDropzone from 'ember-file-upload/components/file-dropzone';
import { inject as service } from '@ember/service';
import FileQueueService from 'ember-file-upload/services/file-queue';
import { t } from 'ember-intl';
import OpenToFiles from './files';
import OpenToToggles from './toggles';

export default class OpenTo extends Component {
  @service fileQueue;

  url(file) {
    return URL.createObjectURL(file);
  }

  <template>
    <div class='mx-auto max-w-7xl px-4 sm:px-6 lg:px-8'>
      {{! We've used 3xl here, but feel free to try other max-widths based on your needs }}
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
        </div>

      </div>
    </div>
  </template>
}
