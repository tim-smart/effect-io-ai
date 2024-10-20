# toQueue

Converts a `Channel` to a `Queue`.

To import and use `toQueue` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.toQueue
```

**Signature**

```ts
export declare const toQueue: <Done, Err, Elem>(
  queue: Queue.Enqueue<Either.Either<Elem, Exit.Exit<Done, Err>>>
) => Channel<never, Elem, never, Err, unknown, Done>
```
