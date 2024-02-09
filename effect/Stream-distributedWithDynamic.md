# distributedWithDynamic

More powerful version of `Stream.distributedWith`. This returns a function
that will produce new queues and corresponding indices. You can also
provide a function that will be executed after the final events are
enqueued in all queues. Shutdown of the queues is handled by the driver.
Downstream users can also shutdown queues manually. In this case the driver
will continue but no longer backpressure on them.

To import and use `distributedWithDynamic` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.distributedWithDynamic
```

**Signature**

```ts
export declare const distributedWithDynamic: {
  <E, A, _>(options: {
    readonly maximumLag: number
    readonly decide: (a: A) => Effect.Effect<Predicate<number>>
  }): <R>(
    self: Stream<A, E, R>
  ) => Effect.Effect<
    Effect.Effect<[number, Queue.Dequeue<Exit.Exit<A, Option.Option<E>>>], never, never>,
    never,
    Scope.Scope | R
  >
  <R, E, A, _>(
    self: Stream<A, E, R>,
    options: { readonly maximumLag: number; readonly decide: (a: A) => Effect.Effect<Predicate<number>> }
  ): Effect.Effect<
    Effect.Effect<[number, Queue.Dequeue<Exit.Exit<A, Option.Option<E>>>], never, never>,
    never,
    Scope.Scope | R
  >
}
```
