Package: `effect`<br />
Module: `Queue`<br />

## Queue.asDequeue

Convert a Queue to a Dequeue, allowing only read operations.

**Signature**

```ts
declare const asDequeue: <A, E>(self: Queue<A, E>) => Dequeue<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L68)

Since v4.0.0