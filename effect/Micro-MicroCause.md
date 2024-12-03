# MicroCause

A `MicroCause` is a data type that represents the different ways a `Micro` can fail.

**Details**

`MicroCause` comes in three forms:

- `Die`: Indicates an unforeseen defect that wasn't planned for in the system's logic.
- `Fail`: Covers anticipated errors that are recognized and typically handled within the application.
- `Interrupt`: Signifies an operation that has been purposefully stopped.

To import and use `MicroCause` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.MicroCause
undefined
