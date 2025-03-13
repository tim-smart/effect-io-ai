Package: `effect`<br />
Module: `TPriorityQueue`<br />

## TPriorityQueue.fromIterable

Creates a new `TPriorityQueue` from an iterable collection of values.

**Signature**

```ts
declare const fromIterable: <A>(order: Order.Order<A>) => (iterable: Iterable<A>) => STM.STM<TPriorityQueue<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TPriorityQueue.ts#L75)

Since v2.0.0