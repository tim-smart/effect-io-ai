# toQueue

Converts a `Channel` to a `Queue`.

To import and use `toQueue` from the "Channel" module:

```ts
import * as Channel from 'effect/Channel'

// Can be accessed like this
Channel.toQueue
```

**Signature**

```ts
export declare const toQueue: <Err, Done, Elem>(
  queue: Queue.Enqueue<Either.Either<Exit.Exit<Err, Done>, Elem>>
) => Channel<never, Err, Elem, Done, never, never, unknown>
```
