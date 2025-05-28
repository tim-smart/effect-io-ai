Package: `effect`<br />
Module: `Stream`<br />

## Stream.toPubSub

Converts the stream to a scoped `PubSub` of chunks. After the scope is closed,
the `PubSub` will never again produce values and should be discarded.

**Signature**

```ts
declare const toPubSub: { (capacity: number | { readonly capacity: "unbounded"; readonly replay?: number | undefined; } | { readonly capacity: number; readonly strategy?: "sliding" | "dropping" | "suspend" | undefined; readonly replay?: number | undefined; }): <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<PubSub.PubSub<Take.Take<A, E>>, never, Scope.Scope | R>; <A, E, R>(self: Stream<A, E, R>, capacity: number | { readonly capacity: "unbounded"; readonly replay?: number | undefined; } | { readonly capacity: number; readonly strategy?: "sliding" | "dropping" | "suspend" | undefined; readonly replay?: number | undefined; }): Effect.Effect<PubSub.PubSub<Take.Take<A, E>>, never, Scope.Scope | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5193)

Since v2.0.0