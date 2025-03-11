## sliding

Creates a bounded `TPubSub` with the sliding strategy. The `TPubSub` will add new
messages and drop old messages if the `TPubSub` is at capacity.

For best performance use capacities that are powers of two.

**Signature**

```ts
declare const sliding: <A>(requestedCapacity: number) => STM.STM<TPubSub<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TPubSub.ts#L170)

Since v2.0.0