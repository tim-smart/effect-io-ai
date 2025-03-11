## dropping

Creates a bounded `TPubSub` with the dropping strategy. The `TPubSub` will drop new
messages if the `TPubSub` is at capacity.

**Signature**

```ts
declare const dropping: <A>(requestedCapacity: number) => STM.STM<TPubSub<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TPubSub.ts#L91)

Since v2.0.0