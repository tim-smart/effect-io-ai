Package: `effect`<br />
Module: `Stream`<br />

## Stream.toQueue

Converts the stream to a scoped queue of chunks. After the scope is closed,
the queue will never again produce values and should be discarded.

Defaults to the "suspend" back pressure strategy with a capacity of 2.

**Signature**

```ts
declare const toQueue: { (options?: { readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; readonly capacity?: number | undefined; } | { readonly strategy: "unbounded"; } | undefined): <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<Queue.Dequeue<Take.Take<A, E>>, never, Scope.Scope | R>; <A, E, R>(self: Stream<A, E, R>, options?: { readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; readonly capacity?: number | undefined; } | { readonly strategy: "unbounded"; } | undefined): Effect.Effect<Queue.Dequeue<Take.Take<A, E>>, never, Scope.Scope | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5261)

Since v2.0.0