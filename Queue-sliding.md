# sliding

Makes a new bounded `Queue` with the sliding strategy.

When the capacity of the queue is reached, new elements will be added and the
old elements will be dropped.

**Note**: When possible use only power of 2 capacities; this will provide
better performance by utilising an optimised version of the underlying
`RingBuffer`.

Part of the `Queue` module from the `@effect/io` package. Also known as `Queue.sliding`.
