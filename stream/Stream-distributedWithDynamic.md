# distributedWithDynamic

More powerful version of `Stream.distributedWith`. This returns a function
that will produce new queues and corresponding indices. You can also
provide a function that will be executed after the final events are
enqueued in all queues. Shutdown of the queues is handled by the driver.
Downstream users can also shutdown queues manually. In this case the driver
will continue but no longer backpressure on them.

To import and use `distributedWithDynamic` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.distributedWithDynamic
```

**Signature**

```ts
export declare const distributedWithDynamic: {
  <E, A, _>(options: {
    readonly maximumLag: number
    readonly decide: (a: A) => Effect.Effect<never, never, Predicate<number>>
  }): <R>(
    self: Stream<R, E, A>
  ) => Effect.Effect<
    Scope.Scope | R,
    never,
    Effect.Effect<never, never, readonly [number, Queue.Dequeue<Exit.Exit<Option.Option<E>, A>>]>
  >
  <R, E, A, _>(
    self: Stream<R, E, A>,
    options: { readonly maximumLag: number; readonly decide: (a: A) => Effect.Effect<never, never, Predicate<number>> }
  ): Effect.Effect<
    Scope.Scope | R,
    never,
    Effect.Effect<never, never, readonly [number, Queue.Dequeue<Exit.Exit<Option.Option<E>, A>>]>
  >
}
```
