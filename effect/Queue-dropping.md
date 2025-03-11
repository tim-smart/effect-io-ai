## dropping

Makes a new bounded `Queue` with the dropping strategy.

When the capacity of the queue is reached, new elements will be dropped and the
old elements will remain.

**Note**: When possible use only power of 2 capacities; this will provide
better performance by utilising an optimised version of the underlying
`RingBuffer`.

**Signature**

```ts
declare const dropping: <A>(requestedCapacity: number) => Effect.Effect<Queue<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Queue.ts#L450)

Since v2.0.0