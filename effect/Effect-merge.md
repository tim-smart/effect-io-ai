# merge

Returns a new effect where the error channel has been merged into the
success channel to their common combined type.

To import and use `merge` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.merge
```

**Signature**

```ts
export declare const merge: <A, E, R>(self: Effect<A, E, R>) => Effect<E | A, never, R>
```
