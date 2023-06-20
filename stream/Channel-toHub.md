# toHub

Converts a `Channel` to a `Hub`.

To import and use `toHub` from the "Channel" module:

```ts
import * as Channel from '@effect/stream/Channel'

// Can be accessed like this
Channel.toHub
```

**Signature**

```ts
export declare const toHub: <Err, Done, Elem>(
  hub: Hub.Hub<Either.Either<Exit.Exit<Err, Done>, Elem>>
) => Channel<never, Err, Elem, Done, never, never, unknown>
```
