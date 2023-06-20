# next

Returns the next numeric value from the pseudo-random number generator.

To import and use `next` from the "Random" module:

```ts
import * as Random from '@effect/io/Random'

// Can be accessed like this
Random.next
```

**Signature**

```ts
export declare const next: (_: void) => Effect.Effect<never, never, number>
```
