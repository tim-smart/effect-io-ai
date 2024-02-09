# distributedWith

More powerful version of `Stream.broadcast`. Allows to provide a function
that determines what queues should receive which elements. The decide
function will receive the indices of the queues in the resulting list.

To import and use `distributedWith` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.distributedWith
```

**Signature**

```ts
export declare const distributedWith: {
  <N extends number, A>(options: {
    readonly size: N
    readonly maximumLag: number
    readonly decide: (a: A) => Effect.Effect<Predicate<number>>
  }): <R, E>(
    self: Stream<A, E, R>
  ) => Effect.Effect<Stream.DynamicTuple<Queue.Dequeue<Exit.Exit<A, Option.Option<E>>>, N>, never, Scope.Scope | R>
  <R, E, N extends number, A>(
    self: Stream<A, E, R>,
    options: {
      readonly size: N
      readonly maximumLag: number
      readonly decide: (a: A) => Effect.Effect<Predicate<number>>
    }
  ): Effect.Effect<Stream.DynamicTuple<Queue.Dequeue<Exit.Exit<A, Option.Option<E>>>, N>, never, Scope.Scope | R>
}
```
