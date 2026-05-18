Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.bounded

Creates a bounded `PubSub` that applies backpressure when it reaches
capacity.

Published messages are retained until all current subscribers have taken
them. When the capacity is full, publishers suspend until space is available.
Pass an options object to configure both `capacity` and an optional replay
buffer for late subscribers.

**Signature**

```ts
declare const bounded: <A>(capacity: number | { readonly capacity: number; readonly replay?: number | undefined; }) => Effect.Effect<PubSub<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L348)

Since v2.0.0