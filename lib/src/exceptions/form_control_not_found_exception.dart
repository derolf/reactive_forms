// Copyright 2020 Joan Pablo Jiménez Milian. All rights reserved.
// Use of this source code is governed by the MIT license that can be
// found in the LICENSE file.
const String UNKNOWN_CONTROL_NAME = '__unknown-control__';

/// This exception is thrown when a [FormGroup] or a [FormArray]
/// doesn't find the [FormControl] by name
class FormControlNotFoundException implements Exception {
  /// The name of the control that was not found.
  final String controlName;

  /// Creates an instance of the exception.
  ///
  /// Requires the [controlName] that represents the name of the control
  /// that was not found.
  FormControlNotFoundException({this.controlName = UNKNOWN_CONTROL_NAME});

  @override
  String toString() {
    // ignore: unnecessary_null_comparison
    if (this.controlName == UNKNOWN_CONTROL_NAME) {
      return 'FormControlNotFoundException: control not found.';
    }

    return 'FormControlNotFoundException: control with name: \'$controlName\' not found.';
  }
}
