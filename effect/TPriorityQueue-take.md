## take

Takes a value from the queue, retrying until a value is in the queue.

**Signature**

```ts
declare const take: <A>(self: TPriorityQueue<A>) => STM.STM<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TPriorityQueue.ts#L179)

Since v2.0.0