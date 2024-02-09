# peel

Peels off enough material from the stream to construct a `Z` using the
provided `Sink` and then returns both the `Z` and the rest of the
`Stream` in a scope. Like all scoped values, the provided stream is
valid only within the scope.

To import and use `peel` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.peel
```

**Signature**

```ts
export declare const peel: {
  <A2, A, E2, R2>(
    sink: Sink.Sink<A2, A, A, E2, R2>
  ): <E, R>(self: Stream<A, E, R>) => Effect.Effect<[A2, Stream<A, E, never>], E2 | E, Scope.Scope | R2 | R>
  <A, E, R, A2, E2, R2>(
    self: Stream<A, E, R>,
    sink: Sink.Sink<A2, A, A, E2, R2>
  ): Effect.Effect<[A2, Stream<A, E, never>], E | E2, Scope.Scope | R | R2>
}
```
