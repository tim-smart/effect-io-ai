# resurrect

Unearth the unchecked failure of the effect (opposite of `orDie`).

To import and use `resurrect` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.resurrect
```

**Signature**

```ts
export declare const resurrect: <R, E, A>(self: Effect<R, E, A>) => Effect<R, unknown, A>
```
