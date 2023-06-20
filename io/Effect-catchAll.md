# catchAll

Recovers from all recoverable errors.

**Note**: that `Effect.catchAll` will not recover from unrecoverable defects. To
recover from both recoverable and unrecoverable errors use
`Effect.catchAllCause`.

To import and use `catchAll` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.catchAll
```

**Signature**

```ts
export declare const catchAll: {
  <E, R2, E2, A2>(f: (e: E) => Effect<R2, E2, A2>): <R, A>(self: Effect<R, E, A>) => Effect<R2 | R, E2, A2 | A>
  <R, A, E, R2, E2, A2>(self: Effect<R, E, A>, f: (e: E) => Effect<R2, E2, A2>): Effect<R | R2, E2, A | A2>
}
```
