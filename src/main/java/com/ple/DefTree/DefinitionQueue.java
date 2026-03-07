package com.ple.DefTree;

import java.util.ArrayDeque;

class DefinitionQueue {
  private ArrayDeque<String> defs;

  DefinitionQueue() {
    defs = new ArrayDeque<String>();
  }

  private void addDef(String defToAdd) {
    defs.add(defToAdd);
  }

  private void removeDef(String defToRemove) {
    defs.removeFirstOccurrence(defToRemove);
  }

  private void clearDefQueue() {
    //add user confirmation here someday
    defs.clear();
  }

}
