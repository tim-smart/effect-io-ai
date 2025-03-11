## sliding

Makes a new bounded `Queue` with the sliding strategy.

When the capacity of the queue is reached, new elements will be added and the
old elements will be dropped.

**Note**: When possible use only power of 2 capacities; this will provide
better performance by utilising an optimised version of the underlying
`RingBuffer`.

**Signature**

```ts
declare const sliding: <A>(requestedCapacity: number) => Effect.Effect<Queue<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Queue.ts#L465)

Since v2.0.0