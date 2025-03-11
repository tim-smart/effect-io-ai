## peek

Peeks at the first value in the queue without removing it, retrying until a
value is in the queue.

**Signature**

```ts
declare const peek: <A>(self: TPriorityQueue<A>) => STM.STM<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TPriorityQueue.ts#L132)

Since v2.0.0