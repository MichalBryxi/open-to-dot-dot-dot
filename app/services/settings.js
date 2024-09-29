import Service from '@ember/service';
import { tracked } from '@glimmer/tracking';

export default class SettingsService extends Service {
  @tracked text = '#OpenTo...';
  @tracked colourStart = '#a855f7';
  @tracked colourStop = '#ec4899';
  @tracked cropToCircle = true;
}
