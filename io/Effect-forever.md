# forever

Repeats this effect forever (until the first error).

To import and use `forever` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.forever
```

**Signature**

```ts
export declare const forever: <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, never>
```
