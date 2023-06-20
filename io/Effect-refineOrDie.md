# refineOrDie

Keeps some of the errors, and terminates the fiber with the rest

To import and use `refineOrDie` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.refineOrDie
```

**Signature**

```ts
export declare const refineOrDie: {
  <E, E1>(pf: (e: E) => Option.Option<E1>): <R, A>(self: Effect<R, E, A>) => Effect<R, E1, A>
  <R, E, A, E1>(self: Effect<R, E, A>, pf: (e: E) => Option.Option<E1>): Effect<R, E1, A>
}
```
