# orDieWith

Keeps none of the errors, and terminates the fiber with them, using the
specified function to convert the `E` into a `Throwable`.

To import and use `orDieWith` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.orDieWith
```

**Signature**

```ts
export declare const orDieWith: {
  <E>(f: (error: E) => unknown): <R, A>(self: Effect<R, E, A>) => Effect<R, never, A>
  <R, E, A>(self: Effect<R, E, A>, f: (error: E) => unknown): Effect<R, never, A>
}
```
