Package: `effect`<br />
Module: `TQueue`<br />

## TQueue.takeN

Takes the specified number of elements from the queue. If there are fewer
than the specified number of elements available, it retries until they
become available.

**Signature**

```ts
declare const takeN: { (n: number): <A>(self: TDequeue<A>) => STM.STM<Array<A>>; <A>(self: TDequeue<A>, n: number): STM.STM<Array<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TQueue.ts#L410)

Since v2.0.0