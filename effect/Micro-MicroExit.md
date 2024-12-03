# MicroExit

The `MicroExit` type is used to represent the result of a `Micro` computation. It
can either be successful, containing a value of type `A`, or it can fail,
containing an error of type `E` wrapped in a `MicroCause`.

To import and use `MicroExit` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.MicroExit
undefined
