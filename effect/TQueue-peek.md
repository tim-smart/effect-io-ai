## peek

Views the next element in the queue without removing it, retrying if the
queue is empty.

**Signature**

```ts
declare const peek: <A>(self: TDequeue<A>) => STM.STM<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TQueue.ts#L308)

Since v2.0.0