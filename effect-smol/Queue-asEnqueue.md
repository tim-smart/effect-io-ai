Package: `effect`<br />
Module: `Queue`<br />

## Queue.asEnqueue

Converts a Queue to an Enqueue (write-only interface).

**Signature**

```ts
declare const asEnqueue: <A, E>(self: Queue<A, E>) => Enqueue<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L60)

Since v4.0.0