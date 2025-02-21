# interruptOption

Retrieves the first `Interrupt` in a `Cause`, if present.

**Details**

This function returns an `Option` with the first fiber interruption
discovered. This is particularly useful for concurrency analysis or debugging
cancellations.

To import and use `interruptOption` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.interruptOption
```

**Signature**

```ts
export declare const interruptOption: <E>(self: Cause<E>) => Option.Option<FiberId.FiberId>
```
