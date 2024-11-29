# squashWith

Squashes a `Cause` down to a single defect, chosen to be the "most important"
defect. If a recoverable error is found, the provided function will be used
to map the error a defect, and the resulting value will be returned.

To import and use `squashWith` from the "Cause" module:

ts
import \* as Cause from "effect/Cause"
// Can be accessed like this
Cause.squashWith
undefined

**Signature**

```ts
export declare const squashWith: {
  <E>(f: (error: E) => unknown): (self: Cause<E>) => unknown
  <E>(self: Cause<E>, f: (error: E) => unknown): unknown
}
```
