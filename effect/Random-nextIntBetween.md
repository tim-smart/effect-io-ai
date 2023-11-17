# nextIntBetween

Returns the next integer value in the specified range from the
pseudo-random number generator.

To import and use `nextIntBetween` from the "Random" module:

```ts
import * as Random from "effect/Random"
// Can be accessed like this
Random.nextIntBetween
```

**Signature**

```ts
export declare const nextIntBetween: (min: number, max: number) => Effect.Effect<never, never, number>
```
