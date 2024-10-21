import 'package:flutter/material.dart';

class Globalvariables {
    ValueNotifier<String> partid = ValueNotifier<String>("U252354");
    void setPartId(String id) {
        partid.value = id;
    }
    String getPartIdValue() {
        return partid.value;
    }
    ValueNotifier<String> getPartId() {
        return partid;
    }

}