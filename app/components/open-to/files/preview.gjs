import Component from '@glimmer/component';
import FileDropzone from 'ember-file-upload/components/file-dropzone';
import { inject as service } from '@ember/service';
import FileQueueService from 'ember-file-upload/services/file-queue';
import { t } from 'ember-intl';

export default class OpenToFiles extends Component {
  @service fileQueue;

  objectURL(file) {
    return URL.createObjectURL(file);
  }

  <template>
    <div class='w-full h-full rounded-full flex -space-x-32 overflow-hidden'>
      <img src={{this.objectURL @file}} />

      <svg
        viewBox='0 0 500 500'
        version='1.1'
        id='svg1'
        sodipodi:docname='open-to-template.svg'
        xml:space='preserve'
        inkscape:version='1.3.2 (091e20e, 2023-11-25)'
        xmlns:inkscape='http://www.inkscape.org/namespaces/inkscape'
        xmlns:sodipodi='http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd'
        xmlns:xlink='http://www.w3.org/1999/xlink'
        xmlns='http://www.w3.org/2000/svg'
        xmlns:svg='http://www.w3.org/2000/svg'
      ><defs id='defs1'><linearGradient
            id='linearGradient7'
            inkscape:collect='always'
          ><stop
              style='stop-color:#00e503;stop-opacity:1;'
              offset='0'
              id='stop7'
            /><stop
              style='stop-color:#12e500;stop-opacity:0;'
              offset='1'
              id='stop8'
            /></linearGradient><linearGradient
            inkscape:collect='always'
            xlink:href='#linearGradient7'
            id='linearGradient8'
            x1='278.16702'
            y1='446.6568'
            x2='321.58673'
            y2='350.27707'
            gradientUnits='userSpaceOnUse'
          /></defs><sodipodi:namedview
          id='namedview1'
          pagecolor='#ffffff'
          bordercolor='#666666'
          borderopacity='1.0'
          inkscape:showpageshadow='false'
          inkscape:pageopacity='0.0'
          inkscape:pagecheckerboard='0'
          inkscape:deskcolor='#d1d1d1'
          inkscape:zoom='2.2721597'
          inkscape:cx='249.98242'
          inkscape:cy='442.0904'
          inkscape:window-width='2784'
          inkscape:window-height='1384'
          inkscape:window-x='2497'
          inkscape:window-y='645'
          inkscape:window-maximized='0'
          inkscape:current-layer='svg1'
          showborder='false'
          borderlayer='false'
          shape-rendering='crispEdges'
        /><path
          id='curve'
          fill='transparent'
          d='M 27.837018,258.6854 C 41.808363,439.19199 165.05284,473.2831 237.55522,476.61982 407.25882,472.83414 467.47105,354.12272 471.77105,360.82272'
          sodipodi:nodetypes='ccc'
          style='display:none;opacity:0.258929'
        /><path
          id='rect7'
          style='display:inline;opacity:1;fill:url(#linearGradient8);stroke-width:31.5704;stroke-linecap:round;stroke-linejoin:round'
          d='M 0,0 V 500 H 500 V 0 Z m 248.89453,60.828125 c 93.61403,-0.645638 170.05346,79.052925 170.86524,178.150395 l 0.006,1.55859 C 419.76601,339.63735 343.98403,420.03452 250.36914,420.25 156.75357,420.46528 80.641893,340.41644 80.236328,241.31641 79.830262,142.21752 155.2818,61.473637 248.89453,60.828125 Z'
          sodipodi:nodetypes='ccccccccccc'
        /><text
          width='500'
          id='text1'
          style="font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;font-size:53.3333px;font-family:Arial;-inkscape-font-specification:'Arial, Bold';font-variant-ligatures:normal;font-variant-caps:normal;font-variant-numeric:normal;font-variant-east-asian:normal;letter-spacing:5px;display:inline;fill:#ffffff;fill-opacity:1"
          inkscape:label='text1'
        ><textPath
            xlink:href='#curve'
            id='textPath1'
            dx='2.72'
          >#OPENTOWORK</textPath></text></svg>
    </div>
  </template>
}
