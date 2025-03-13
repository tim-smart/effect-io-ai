Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.dropping

Creates a bounded `PubSub` with the dropping strategy. The `PubSub` will drop new
messages if the `PubSub` is at capacity.

For best performance use capacities that are powers of two.

**Signature**

```ts
declare const dropping: <A>(capacity: number | { readonly capacity: number; readonly replay?: number | undefined; }) => Effect.Effect<PubSub<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/PubSub.ts#L62)

Since v2.0.0