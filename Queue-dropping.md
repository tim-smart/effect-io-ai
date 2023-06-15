# dropping

Makes a new bounded `Queue` with the dropping strategy.

When the capacity of the queue is reached, new elements will be dropped and the
old elements will remain.

**Note**: When possible use only power of 2 capacities; this will provide
better performance by utilising an optimised version of the underlying
`RingBuffer`.

Part of the `Queue` module from the `@effect/io` package. Also known as `Queue.dropping`.
