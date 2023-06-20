# run

Runs a channel until the end is received.

To import and use `run` from the "Channel" module:

```ts
import * as Channel from '@effect/stream/Channel'

// Can be accessed like this
Channel.run
```

**Signature**

```ts
export declare const run: <Env, InErr, InDone, OutErr, OutDone>(
  self: Channel<Env, InErr, unknown, InDone, OutErr, never, OutDone>
) => Effect.Effect<Env, OutErr, OutDone>
```
