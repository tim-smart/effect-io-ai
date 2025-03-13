Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.bounded

Creates a bounded `PubSub` with the back pressure strategy. The `PubSub` will retain
messages until they have been taken by all subscribers, applying back
pressure to publishers if the `PubSub` is at capacity.

For best performance use capacities that are powers of two.

**Signature**

```ts
declare const bounded: <A>(capacity: number | { readonly capacity: number; readonly replay?: number | undefined; }) => Effect.Effect<PubSub<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/PubSub.ts#L49)

Since v2.0.0