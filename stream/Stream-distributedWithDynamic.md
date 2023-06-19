# distributedWithDynamic

More powerful version of `Stream.distributedWith`. This returns a function
that will produce new queues and corresponding indices. You can also
provide a function that will be executed after the final events are
enqueued in all queues. Shutdown of the queues is handled by the driver.
Downstream users can also shutdown queues manually. In this case the driver
will continue but no longer backpressure on them.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const distributedWithDynamic: {
  <E, A, _>(maximumLag: number, decide: (a: A) => Effect.Effect<never, never, Predicate<number>>): <R>(
    self: Stream<R, E, A>
  ) => Effect.Effect<
    Scope.Scope | R,
    never,
    Effect.Effect<never, never, readonly [number, Queue.Dequeue<Exit.Exit<Option.Option<E>, A>>]>
  >
  <R, E, A, _>(
    self: Stream<R, E, A>,
    maximumLag: number,
    decide: (a: A) => Effect.Effect<never, never, Predicate<number>>
  ): Effect.Effect<
    Scope.Scope | R,
    never,
    Effect.Effect<never, never, readonly [number, Queue.Dequeue<Exit.Exit<Option.Option<E>, A>>]>
  >
}
```
