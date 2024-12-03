# nextIntBetween

Returns the next integer in the specified range from the pseudo-random number
generator.

To import and use `nextIntBetween` from the "TRandom" module:

```ts
import * as TRandom from "effect/TRandom"
// Can be accessed like this
TRandom.nextIntBetween
```

**Signature**

```ts
export declare const nextIntBetween: (low: number, high: number) => STM.STM<number, never, TRandom>
```
