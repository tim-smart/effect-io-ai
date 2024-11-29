# isInterruptType

Returns `true` if the specified `Cause` is an `Interrupt` type, `false`
otherwise.

To import and use `isInterruptType` from the "Cause" module:

ts
import \* as Cause from "effect/Cause"
// Can be accessed like this
Cause.isInterruptType
undefined

**Signature**

```ts
export declare const isInterruptType: <E>(self: Cause<E>) => self is Interrupt
```
