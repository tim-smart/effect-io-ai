Package: `effect`<br />
Module: `TQueue`<br />

## TQueue.size

Retrieves the size of the queue, which is equal to the number of elements
in the queue. This may be negative if fibers are suspended waiting for
elements to be added to the queue.

**Signature**

```ts
declare const size: <A>(self: TDequeue<A> | TEnqueue<A>) => STM.STM<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TQueue.ts#L358)

Since v2.0.0