# random

Retreives the `Random` service from the context.

To import and use `random` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.random
```

**Signature**

```ts
export declare const random: (_: void) => Effect<never, never, Random.Random>
```
