# dropping

Makes a new bounded `Queue` with the dropping strategy.

When the capacity of the queue is reached, new elements will be dropped and the
old elements will remain.

**Note**: When possible use only power of 2 capacities; this will provide
better performance by utilising an optimised version of the underlying
`RingBuffer`.

To import and use `dropping` from the "Queue" module:

```ts
import * as Queue from '@effect/io/Queue'

// Can be accessed like this
Queue.dropping
```

**Signature**

```ts
export declare const dropping: <A>(requestedCapacity: number) => Effect.Effect<never, never, Queue<A>>
```
