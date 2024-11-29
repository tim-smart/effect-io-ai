# toPubSub

Converts a `Channel` to a `PubSub`.

To import and use `toPubSub` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.toPubSub
undefined

**Signature**

```ts
export declare const toPubSub: <Done, Err, Elem>(
  pubsub: PubSub.PubSub<Either.Either<Elem, Exit.Exit<Done, Err>>>
) => Channel<never, Elem, never, Err, unknown, Done>
```
