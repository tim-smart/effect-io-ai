Package: `effect`<br />
Module: `Stream`<br />

## Stream.share

Returns a new Stream that multicasts the original Stream, subscribing to it as soon as the first consumer subscribes.
As long as there is at least one consumer, the upstream will continue running and emitting data.
When all consumers have exited, the upstream will be finalized.

**Signature**

```ts
declare const share: { <A, E>(config: { readonly capacity: "unbounded"; readonly replay?: number | undefined; readonly idleTimeToLive?: Duration.DurationInput | undefined; } | { readonly capacity: number; readonly strategy?: "sliding" | "dropping" | "suspend" | undefined; readonly replay?: number | undefined; readonly idleTimeToLive?: Duration.DurationInput | undefined; }): <R>(self: Stream<A, E, R>) => Effect.Effect<Stream<A, E>, never, R | Scope.Scope>; <A, E, R>(self: Stream<A, E, R>, config: { readonly capacity: "unbounded"; readonly replay?: number | undefined; readonly idleTimeToLive?: Duration.DurationInput | undefined; } | { readonly capacity: number; readonly strategy?: "sliding" | "dropping" | "suspend" | undefined; readonly replay?: number | undefined; readonly idleTimeToLive?: Duration.DurationInput | undefined; }): Effect.Effect<Stream<A, E>, never, R | Scope.Scope>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L568)

Since v3.8.0