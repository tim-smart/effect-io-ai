# fromPubSubScoped

Construct a `Channel` from a `PubSub` within a scoped effect.

To import and use `fromPubSubScoped` from the "Channel" module:

```ts
import * as Channel from 'effect/Channel'

// Can be accessed like this
Channel.fromPubSubScoped
```

**Signature**

```ts
export declare const fromPubSubScoped: <Err, Done, Elem>(
  pubsub: PubSub.PubSub<Either.Either<Exit.Exit<Err, Done>, Elem>>
) => Effect.Effect<Scope.Scope, never, Channel<never, unknown, unknown, unknown, Err, Elem, Done>>
```
