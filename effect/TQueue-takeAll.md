## takeAll

Takes all the values in the queue and returns the values. If the queue is
empty returns an empty collection.

**Signature**

```ts
declare const takeAll: <A>(self: TDequeue<A>) => STM.STM<Array<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TQueue.ts#L387)

Since v2.0.0