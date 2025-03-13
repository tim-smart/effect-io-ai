Package: `effect`<br />
Module: `Stream`<br />

## Stream.distributedWithDynamic

More powerful version of `Stream.distributedWith`. This returns a function
that will produce new queues and corresponding indices. You can also
provide a function that will be executed after the final events are
enqueued in all queues. Shutdown of the queues is handled by the driver.
Downstream users can also shutdown queues manually. In this case the driver
will continue but no longer backpressure on them.

**Signature**

```ts
declare const distributedWithDynamic: { <A>(options: { readonly maximumLag: number; readonly decide: (a: A) => Effect.Effect<Predicate<number>, never, never>; }): <E, R>(self: Stream<A, E, R>) => Effect.Effect<Effect.Effect<[number, Queue.Dequeue<Exit.Exit<A, Option.Option<E>>>], never, never>, never, Scope.Scope | R>; <A, E, R>(self: Stream<A, E, R>, options: { readonly maximumLag: number; readonly decide: (a: A) => Effect.Effect<Predicate<number>, never, never>; }): Effect.Effect<Effect.Effect<[number, Queue.Dequeue<Exit.Exit<A, Option.Option<E>>>], never, never>, never, Scope.Scope | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1306)

Since v2.0.0