Package: `effect`<br />
Module: `Stream`<br />

## Stream.toQueueOfElements

Converts the stream to a scoped queue of elements. After the scope is
closed, the queue will never again produce values and should be discarded.

Defaults to a capacity of 2.

**Signature**

```ts
declare const toQueueOfElements: { (options?: { readonly capacity?: number | undefined; } | undefined): <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<Queue.Dequeue<Exit.Exit<A, Option.Option<E>>>, never, Scope.Scope | R>; <A, E, R>(self: Stream<A, E, R>, options?: { readonly capacity?: number | undefined; } | undefined): Effect.Effect<Queue.Dequeue<Exit.Exit<A, Option.Option<E>>>, never, Scope.Scope | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5298)

Since v2.0.0