// Toggle the Files side panel, like the tab bar's Files button, from a key
// (mod.open:files-toggle). Opens as an invisible popup, acts, and closes.

import { View, div } from "gpui-kit";
import { run, layout, props, closeOverlay } from "herdr";

function find(node, id) {
  if (node?.id === id) return node;
  for (const child of node?.children ?? []) {
    const found = find(child, id);
    if (found) return found;
  }
  return null;
}

const PANEL = "files";

export default class FilesToggle extends View {
  init(_props, cx) {
    const root = layout(), panel = find(root, "panel"), body = find(root, "panel-body");
    if (panel && !panel.hidden && body?.active === PANEL) run("layout.hide", { id: "panel" });
    else { run("layout.select", { stack: "panel-body", child: PANEL }); run("layout.show", { id: "panel" }); }
    cx.spawn(async () => closeOverlay(props()?.overlay));
  }

  render() {
    return div();
  }
}
