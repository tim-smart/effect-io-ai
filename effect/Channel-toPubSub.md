# toPubSub

Converts a `Channel` to a `PubSub`.

To import and use `toPubSub` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.toPubSub
```

**Signature**

```ts
export declare const toPubSub: <Done, Err, Elem>(
  pubsub: PubSub.PubSub<Either.Either<Exit.Exit<Done, Err>, Elem>>
) => Channel<never, Elem, never, Err, unknown, Done, never>
```
