# nextInt

Returns the next integer value from the pseudo-random number generator.

To import and use `nextInt` from the "Random" module:

```ts
import * as Random from '@effect/io/Random'

// Can be accessed like this
Random.nextInt
```

**Signature**

```ts
export declare const nextInt: (_: void) => Effect.Effect<never, never, number>
```