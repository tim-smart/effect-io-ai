# peel

Peels off enough material from the stream to construct a `Z` using the
provided `Sink` and then returns both the `Z` and the rest of the
`Stream` in a scope. Like all scoped values, the provided stream is
valid only within the scope.

To import and use `peel` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.peel
```

**Signature**

```ts
export declare const peel: {
  <R2, E2, A, Z>(sink: Sink.Sink<R2, E2, A, A, Z>): <R, E>(
    self: Stream<R, E, A>
  ) => Effect.Effect<Scope.Scope | R2 | R, E2 | E, readonly [Z, Stream<never, E, A>]>
  <R, E, R2, E2, A, Z>(self: Stream<R, E, A>, sink: Sink.Sink<R2, E2, A, A, Z>): Effect.Effect<
    Scope.Scope | R | R2,
    E | E2,
    readonly [Z, Stream<never, E, A>]
  >
}
```
