# nextRange

Returns the next number in the specified range from the pseudo-random number
generator.

To import and use `nextRange` from the "TRandom" module:

```ts
import * as TRandom from "effect/TRandom"
// Can be accessed like this
TRandom.nextRange
```

**Signature**

```ts
export declare const nextRange: (min: number, max: number) => STM.STM<TRandom, never, number>
```
