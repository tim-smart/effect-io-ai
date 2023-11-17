# interruptOption

Returns the `FiberId` associated with the first `Interrupt` in the specified
cause, if one exists.

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
