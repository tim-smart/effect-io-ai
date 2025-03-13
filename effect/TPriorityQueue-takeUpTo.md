Package: `effect`<br />
Module: `TPriorityQueue`<br />

## TPriorityQueue.takeUpTo

Takes up to the specified maximum number of elements from the queue.

**Signature**

```ts
declare const takeUpTo: { (n: number): <A>(self: TPriorityQueue<A>) => STM.STM<Array<A>>; <A>(self: TPriorityQueue<A>, n: number): STM.STM<Array<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TPriorityQueue.ts#L204)

Since v2.0.0