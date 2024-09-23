import Service from '@ember/service';
import { tracked } from '@glimmer/tracking';

export default class SettingsService extends Service {
  @tracked text = '#OpenTo...';
  @tracked colourStart = '#00e503';
  @tracked colourStop = '#12e500';
}
