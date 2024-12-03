# mapErrorCause

Returns an effect with its full cause of failure mapped using the specified
function. This can be used to transform errors while preserving the original
structure of `Cause`.

See `sandbox`, `catchAllCause` for other functions for dealing with defects.

To import and use `mapErrorCause` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.mapErrorCause
```

**Signature**

```ts
export declare const mapErrorCause: {
  <E, E2>(f: (cause: Cause.Cause<E>) => Cause.Cause<E2>): <A, R>(self: Effect<A, E, R>) => Effect<A, E2, R>
  <A, E, R, E2>(self: Effect<A, E, R>, f: (cause: Cause.Cause<E>) => Cause.Cause<E2>): Effect<A, E2, R>
}
```
