Package: `effect`<br />
Module: `Stream`<br />

## Stream.broadcastedQueues

Converts the stream to a scoped list of queues. Every value will be
replicated to every queue with the slowest queue being allowed to buffer
`maximumLag` chunks before the driver is back pressured.

Queues can unsubscribe from upstream by shutting down.

**Signature**

```ts
declare const broadcastedQueues: { <N extends number>(n: N, maximumLag: number | { readonly capacity: "unbounded"; readonly replay?: number | undefined; } | { readonly capacity: number; readonly strategy?: "sliding" | "dropping" | "suspend" | undefined; readonly replay?: number | undefined; }): <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<TupleOf<N, Queue.Dequeue<Take.Take<A, E>>>, never, Scope.Scope | R>; <A, E, R, N extends number>(self: Stream<A, E, R>, n: N, maximumLag: number | { readonly capacity: "unbounded"; readonly replay?: number | undefined; } | { readonly capacity: number; readonly strategy?: "sliding" | "dropping" | "suspend" | undefined; readonly replay?: number | undefined; }): Effect.Effect<TupleOf<N, Queue.Dequeue<Take.Take<A, E>>>, never, Scope.Scope | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L632)

Since v2.0.0