## takeUpTo

Takes up to max number of values from the queue.

**Signature**

```ts
declare const takeUpTo: { (max: number): <A>(self: TDequeue<A>) => STM.STM<Array<A>>; <A>(self: TDequeue<A>, max: number): STM.STM<Array<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TQueue.ts#L421)

Since v2.0.0