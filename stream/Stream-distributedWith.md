# distributedWith

More powerful version of `Stream.broadcast`. Allows to provide a function
that determines what queues should receive which elements. The decide
function will receive the indices of the queues in the resulting list.

To import and use `distributedWith` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.distributedWith
```

**Signature**

```ts
export declare const distributedWith: {
  <N extends number, A>(n: N, maximumLag: number, decide: (a: A) => Effect.Effect<never, never, Predicate<number>>): <
    R,
    E
  >(
    self: Stream<R, E, A>
  ) => Effect.Effect<Scope.Scope | R, never, Stream.DynamicTuple<Queue.Dequeue<Exit.Exit<Option.Option<E>, A>>, N>>
  <R, E, N extends number, A>(
    self: Stream<R, E, A>,
    n: N,
    maximumLag: number,
    decide: (a: A) => Effect.Effect<never, never, Predicate<number>>
  ): Effect.Effect<Scope.Scope | R, never, Stream.DynamicTuple<Queue.Dequeue<Exit.Exit<Option.Option<E>, A>>, N>>
}
```
