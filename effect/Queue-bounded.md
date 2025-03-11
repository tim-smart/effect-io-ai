## bounded

Makes a new bounded `Queue`. When the capacity of the queue is reached, any
additional calls to `offer` will be suspended until there is more room in
the queue.

**Note**: When possible use only power of 2 capacities; this will provide
better performance by utilising an optimised version of the underlying
`RingBuffer`.

**Signature**

```ts
declare const bounded: <A>(requestedCapacity: number) => Effect.Effect<Queue<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Queue.ts#L435)

Since v2.0.0