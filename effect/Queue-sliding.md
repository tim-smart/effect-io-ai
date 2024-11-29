# sliding

Makes a new bounded `Queue` with the sliding strategy.

When the capacity of the queue is reached, new elements will be added and the
old elements will be dropped.

**Note**: When possible use only power of 2 capacities; this will provide
better performance by utilising an optimised version of the underlying
`RingBuffer`.

To import and use `sliding` from the "Queue" module:

ts
import \* as Queue from "effect/Queue"
// Can be accessed like this
Queue.sliding
undefined

**Signature**

```ts
export declare const sliding: <A>(requestedCapacity: number) => Effect.Effect<Queue<A>>
```
