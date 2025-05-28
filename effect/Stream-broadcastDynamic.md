Package: `effect`<br />
Module: `Stream`<br />

## Stream.broadcastDynamic

Fan out the stream, producing a dynamic number of streams that have the
same elements as this stream. The driver stream will only ever advance the
`maximumLag` chunks before the slowest downstream stream.

**Signature**

```ts
declare const broadcastDynamic: { (maximumLag: number | { readonly capacity: "unbounded"; readonly replay?: number | undefined; } | { readonly capacity: number; readonly strategy?: "sliding" | "dropping" | "suspend" | undefined; readonly replay?: number | undefined; }): <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<Stream<A, E>, never, Scope.Scope | R>; <A, E, R>(self: Stream<A, E, R>, maximumLag: number | { readonly capacity: "unbounded"; readonly replay?: number | undefined; } | { readonly capacity: number; readonly strategy?: "sliding" | "dropping" | "suspend" | undefined; readonly replay?: number | undefined; }): Effect.Effect<Stream<A, E>, never, Scope.Scope | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L605)

Since v2.0.0