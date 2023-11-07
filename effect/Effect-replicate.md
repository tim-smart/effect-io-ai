# replicate

Replicates the given effect `n` times.

To import and use `replicate` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.replicate
```

**Signature**

```ts
export declare const replicate: {
  (n: number): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A>[]
  <R, E, A>(self: Effect<R, E, A>, n: number): Effect<R, E, A>[]
}
```
