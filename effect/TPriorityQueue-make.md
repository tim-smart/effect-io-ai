Package: `effect`<br />
Module: `TPriorityQueue`<br />

## TPriorityQueue.make

Makes a new `TPriorityQueue` that is initialized with specified values.

**Signature**

```ts
declare const make: <A>(order: Order.Order<A>) => (...elements: Array<A>) => STM.STM<TPriorityQueue<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TPriorityQueue.ts#L101)

Since v2.0.0