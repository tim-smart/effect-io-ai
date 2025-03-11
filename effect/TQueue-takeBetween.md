## takeBetween

Takes a number of elements from the queue between the specified minimum and
maximum. If there are fewer than the minimum number of elements available,
retries until at least the minimum number of elements have been collected.

**Signature**

```ts
declare const takeBetween: { (min: number, max: number): <A>(self: TDequeue<A>) => STM.STM<Array<A>>; <A>(self: TDequeue<A>, min: number, max: number): STM.STM<Array<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TQueue.ts#L397)

Since v2.0.0