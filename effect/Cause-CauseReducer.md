# CauseReducer

Describes methods for reducing a `Cause<E>` into a value of type `Z` with
access to contextual information.

**Details**

This interface is meant for advanced transformations of `Cause`. By
implementing each method, you can define how different parts of the `Cause`
structure (like `Fail`, `Die`, or `Interrupt`) should be transformed into a
final type `Z`. The `context` parameter carries additional data needed during
this reduction.

To import and use `CauseReducer` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.CauseReducer
```
