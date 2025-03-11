## offer

Offers the specified value to the queue.

**Signature**

```ts
declare const offer: { <A>(value: A): (self: TPriorityQueue<A>) => STM.STM<void>; <A>(self: TPriorityQueue<A>, value: A): STM.STM<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TPriorityQueue.ts#L109)

Since v2.0.0