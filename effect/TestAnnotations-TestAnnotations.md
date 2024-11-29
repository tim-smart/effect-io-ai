# TestAnnotations

The `Annotations` trait provides access to an annotation map that tests can
add arbitrary annotations to. Each annotation consists of a string
identifier, an initial value, and a function for combining two values.
Annotations form monoids and you can think of `Annotations` as a more
structured logging service or as a super polymorphic version of the writer
monad effect.

To import and use `TestAnnotations` from the "TestAnnotations" module:

ts
import \* as TestAnnotations from "effect/TestAnnotations"
// Can be accessed like this
TestAnnotations.TestAnnotations
undefined
