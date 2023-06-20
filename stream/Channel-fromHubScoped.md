# fromHubScoped

Construct a `Channel` from a `Hub` within a scoped effect.

To import and use `fromHubScoped` from the "Channel" module:

```ts
import * as Channel from '@effect/stream/Channel'

// Can be accessed like this
Channel.fromHubScoped
```

**Signature**

```ts
export declare const fromHubScoped: <Err, Done, Elem>(
  hub: Hub.Hub<Either.Either<Exit.Exit<Err, Done>, Elem>>
) => Effect.Effect<Scope.Scope, never, Channel<never, unknown, unknown, unknown, Err, Elem, Done>>
```
