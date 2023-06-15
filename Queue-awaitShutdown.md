# awaitShutdown

Waits until the queue is shutdown. The `Effect` returned by this method will
not resume until the queue has been shutdown. If the queue is already
shutdown, the `Effect` will resume right away.

Part of the `Queue` module from the `@effect/io` package. Also known as `Queue.awaitShutdown`.
