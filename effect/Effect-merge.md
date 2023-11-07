# merge

Returns a new effect where the error channel has been merged into the
success channel to their common combined type.

To import and use `merge` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.merge
```

**Signature**

```ts
export declare const merge: <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, E | A>
```
