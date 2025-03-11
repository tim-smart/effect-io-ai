## sliding

Creates a bounded `PubSub` with the sliding strategy. The `PubSub` will add new
messages and drop old messages if the `PubSub` is at capacity.

For best performance use capacities that are powers of two.

**Signature**

```ts
declare const sliding: <A>(capacity: number | { readonly capacity: number; readonly replay?: number | undefined; }) => Effect.Effect<PubSub<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/PubSub.ts#L75)

Since v2.0.0