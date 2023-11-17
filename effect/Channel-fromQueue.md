# fromQueue

Construct a `Channel` from a `Queue`.

To import and use `fromQueue` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.fromQueue
```

**Signature**

```ts
export declare const fromQueue: <Err, Elem, Done>(
  queue: Queue.Dequeue<Either.Either<Exit.Exit<Err, Done>, Elem>>
) => Channel<never, unknown, unknown, unknown, Err, Elem, Done>
```
