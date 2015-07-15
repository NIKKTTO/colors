palette = '''

$dark: #232b2a;
$dark-green: #7fa5a1;
$light: #ecf6f5;
$light-green: #50c1b5;
$orange: #e85d24;
$green: #66be6b;

//Color Variables
$body: #efefef;
$background: #252d2c;
$font-color: #607673;
$light-green-hover: lighten($light-green, 10%);
$orange-hover: lighten($orange, 10%);
$white: #ffffff;
$green-button: #77d7cd;
$border: #e1ebea;
$grey: #f9f9f9;
$divider: #e9e9e9;
$def_ecl: #e4e4e4;
$input-border: 1px solid #d7d7d7;
$input-font: #77d7cd;
$blog-font: #1E1E1E;
$date-picker: #202625;
$date-green: #46b9ac;
$off-day: #749b97;

$panel-heading: #b9c1c0;
$panel-head-active: #edf8f8;
$panel-divider-top: #222323;
$panel-divider: #293231;
$panel-icon: #252626;
$panel-bg: #222928;
$builder-divider: #f2f2f2;
$base-font-color: #666;
'''

r = /\n\$([^:]+):.+?#([^;]+)/g

colors = []

while(s = r.exec palette)
  colors.push
    name: s[1]
    hex: s[2]

Template.colors.helpers
  colors: colors

Template.colors.onRendered ->
  console.log @$('.sortable')
  @$('.sortable').sortable().disableSelection()