# nextBoolean

Returns the next boolean value from the pseudo-random number generator.

To import and use `nextBoolean` from the "TRandom" module:

```ts
import * as TRandom from "effect/TRandom"
// Can be accessed like this
TRandom.nextBoolean
```

**Signature**

```ts
export declare const nextBoolean: STM.STM<boolean, never, TRandom>
```
