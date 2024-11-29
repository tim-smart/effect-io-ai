# next

Returns the next number from the pseudo-random number generator.

To import and use `next` from the "TRandom" module:

ts
import \* as TRandom from "effect/TRandom"
// Can be accessed like this
TRandom.next
undefined

**Signature**

```ts
export declare const next: STM.STM<number, never, TRandom>
```
