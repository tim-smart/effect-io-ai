# isInterruptType

Checks if a `Cause` is an `Interrupt` type.

To import and use `isInterruptType` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.isInterruptType
```

**Signature**

```ts
export declare const isInterruptType: <E>(self: Cause<E>) => self is Interrupt
```
