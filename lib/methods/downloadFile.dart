import 'dart:html' as html;

void downloadFile(String url) {
  html.AnchorElement anchorElement = new html.AnchorElement(href: url);
  anchorElement.download = "Sahar_Sarraj_Resume";
  anchorElement.click();
}
