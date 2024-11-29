# fromPubSubScoped

Construct a `Channel` from a `PubSub` within a scoped effect.

To import and use `fromPubSubScoped` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.fromPubSubScoped
undefined

**Signature**

```ts
export declare const fromPubSubScoped: <Done, Err, Elem>(
  pubsub: PubSub.PubSub<Either.Either<Elem, Exit.Exit<Done, Err>>>
) => Effect.Effect<Channel<Elem, unknown, Err, unknown, Done, unknown>, never, Scope.Scope>
```
