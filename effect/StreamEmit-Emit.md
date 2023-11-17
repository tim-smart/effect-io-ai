# Emit

An `Emit<R, E, A, B>` represents an asynchronous callback that can be
called multiple times. The callback can be called with a value of type
`Effect<R, Option<E>, Chunk<A>>`, where succeeding with a `Chunk<A>`
indicates to emit those elements, failing with `Some<E>` indicates to
terminate with that error, and failing with `None` indicates to terminate
with an end of stream signal.

To import and use `Emit` from the "StreamEmit" module:

```ts
import * as StreamEmit from "effect/StreamEmit"
// Can be accessed like this
StreamEmit.Emit
```
