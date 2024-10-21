import 'package:flutter/material.dart';

class CurrentScannedPart {
    ValueNotifier<String> partid = ValueNotifier<String>("U252354");
    static final CurrentScannedPart _this = CurrentScannedPart._privateConstructor();

    void setPartId(String id) {
        partid.value = id;
    }
    
    String getPartIdValue() {
        return partid.value;
    }
    
    ValueNotifier<String> getPartId() {
        return partid;
    }

  CurrentScannedPart._privateConstructor() {
        partid = ValueNotifier<String>("U252354");
  }

  factory CurrentScannedPart() => _this;
}
