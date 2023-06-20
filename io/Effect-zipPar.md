# zipPar

Zips this effect and that effect in parallel.

To import and use `zipPar` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.zipPar
```

**Signature**

```ts
export declare const zipPar: {
  <R2, E2, A2>(that: Effect<R2, E2, A2>): <R, E, A>(self: Effect<R, E, A>) => Effect<R2 | R, E2 | E, [A, A2]>
  <R, E, A, R2, E2, A2>(self: Effect<R, E, A>, that: Effect<R2, E2, A2>): Effect<R | R2, E | E2, [A, A2]>
}
```
