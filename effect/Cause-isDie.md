# isDie

Returns `true` if the specified cause contains a defect, `false` otherwise.

To import and use `isDie` from the "Cause" module:

ts
import \* as Cause from "effect/Cause"
// Can be accessed like this
Cause.isDie
undefined

**Signature**

```ts
export declare const isDie: <E>(self: Cause<E>) => boolean
```
