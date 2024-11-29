# fromQueue

Construct a `Channel` from a `Queue`.

To import and use `fromQueue` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.fromQueue
undefined

**Signature**

```ts
export declare const fromQueue: <Done, Err, Elem>(
  queue: Queue.Dequeue<Either.Either<Elem, Exit.Exit<Done, Err>>>
) => Channel<Elem, unknown, Err, unknown, Done, unknown>
```
