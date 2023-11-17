# nextRange

Returns the next numeric value in the specified range from the
pseudo-random number generator.

To import and use `nextRange` from the "Random" module:

```ts
import * as Random from "effect/Random"
// Can be accessed like this
Random.nextRange
```

**Signature**

```ts
export declare const nextRange: (min: number, max: number) => Effect.Effect<never, never, number>
```
