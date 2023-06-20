# tapError

Returns an effect that effectfully "peeks" at the failure of this effect.

To import and use `tapError` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.tapError
```

**Signature**

```ts
export declare const tapError: {
  <E, R2, E2, X>(f: (e: E) => Effect<R2, E2, X>): <R, A>(self: Effect<R, E, A>) => Effect<R2 | R, E | E2, A>
  <R, E, A, R2, E2, X>(self: Effect<R, E, A>, f: (e: E) => Effect<R2, E2, X>): Effect<R | R2, E | E2, A>
}
```
