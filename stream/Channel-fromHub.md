# fromHub

Construct a `Channel` from a `Hub`.

To import and use `fromHub` from the "Channel" module:

```ts
import * as Channel from '@effect/stream/Channel'

// Can be accessed like this
Channel.fromHub
```

**Signature**

```ts
export declare const fromHub: <Err, Done, Elem>(
  hub: Hub.Hub<Either.Either<Exit.Exit<Err, Done>, Elem>>
) => Channel<never, unknown, unknown, unknown, Err, Elem, Done>
```
