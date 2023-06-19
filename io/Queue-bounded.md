# bounded

Makes a new bounded `Queue`. When the capacity of the queue is reached, any
additional calls to `offer` will be suspended until there is more room in
the queue.

**Note**: When possible use only power of 2 capacities; this will provide
better performance by utilising an optimised version of the underlying
`RingBuffer`.

Part of the `Queue` module, imported from `@effect/io/Queue`.

**Signature**

```ts
export declare const bounded: <A>(requestedCapacity: number) => Effect.Effect<never, never, Queue<A>>
```
