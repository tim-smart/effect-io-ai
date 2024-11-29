# fromPubSub

Construct a `Channel` from a `PubSub`.

To import and use `fromPubSub` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.fromPubSub
undefined

**Signature**

```ts
export declare const fromPubSub: <Done, Err, Elem>(
  pubsub: PubSub.PubSub<Either.Either<Elem, Exit.Exit<Done, Err>>>
) => Channel<Elem, unknown, Err, unknown, Done, unknown>
```
