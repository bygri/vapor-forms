import Node

// This is a class because http://stackoverflow.com/a/40413937/284120
/**
  Inherit from this class to implement a field validator. A field validator
  takes a single value of type `T` and returns a `FieldValidationResult`.
*/
open class FieldValidator<T> {

  /**
     This initializer needs to be present until the following swift bug
     gets fixed, otherwise we can't subclass from this module
     https://bugs.swift.org/browse/SR-2295
  */
  public init() {}

  /**
    Validate your value. If the validation was successful, return
    `.success(value)`. Otherwise, return
    `.failure([validationFailed(message: String)])` where the message is a
    string to be displayed to end-users of the form.
  */
  open func validate(input value: T) -> FieldValidationResult {
    return .success(Node(nil))
  }
}
