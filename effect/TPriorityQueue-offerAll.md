Package: `effect`<br />
Module: `TPriorityQueue`<br />

## TPriorityQueue.offerAll

Offers all of the elements in the specified collection to the queue.

**Signature**

```ts
declare const offerAll: { <A>(values: Iterable<A>): (self: TPriorityQueue<A>) => STM.STM<void>; <A>(self: TPriorityQueue<A>, values: Iterable<A>): STM.STM<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TPriorityQueue.ts#L120)

Since v2.0.0