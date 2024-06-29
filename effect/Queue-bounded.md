# bounded

Makes a new bounded `Queue`. When the capacity of the queue is reached, any
additional calls to `offer` will be suspended until there is more room in
the queue.

**Note**: When possible use only power of 2 capacities; this will provide
better performance by utilising an optimised version of the underlying
`RingBuffer`.

To import and use `bounded` from the "Queue" module:

```ts
import * as Queue from "effect/Queue"
// Can be accessed like this
Queue.bounded
```

**Signature**

```ts
export declare const bounded: <A>(requestedCapacity: number) => Effect.Effect<Queue<A>, never, never>
```
