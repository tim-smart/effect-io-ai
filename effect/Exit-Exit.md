# Exit

An `Exit<A, E = never>` describes the result of a executing an `Effect` workflow.

There are two possible values for an `Exit<A, E>`:

- `Exit.Success` contain a success value of type `A`
- `Exit.Failure` contains a failure `Cause` of type `E`

To import and use `Exit` from the "Exit" module:

ts
import \* as Exit from "effect/Exit"
// Can be accessed like this
Exit.Exit
undefined
