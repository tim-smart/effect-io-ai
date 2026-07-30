Package: `effect`<br />
Module: `TPubSub`<br />

## TPubSub.bounded

Creates a bounded `TPubSub` with the back pressure strategy. The `TPubSub` will retain
messages until they have been taken by all subscribers, applying back
pressure to publishers if the `TPubSub` is at capacity.

**Signature**

```ts
declare const bounded: <A>(requestedCapacity: number) => STM.STM<TPubSub<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TPubSub.ts#L74)

Since v2.0.0