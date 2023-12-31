# Cause

A `Cause` represents the full history of a failure resulting from running an
`Effect` workflow.

Effect-TS uses a data structure from functional programming called a semiring
to represent the `Cause` data type. This allows us to take a base type `E`
(which represents the error type of an `Effect`) and capture the sequential
and parallel composition of errors in a fully lossless fashion.

To import and use `Cause` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.Cause
```
