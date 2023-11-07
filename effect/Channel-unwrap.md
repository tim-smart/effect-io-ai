# unwrap

Makes a channel from an effect that returns a channel in case of success.

To import and use `unwrap` from the "Channel" module:

```ts
import * as Channel from 'effect/Channel'

// Can be accessed like this
Channel.unwrap
```

**Signature**

```ts
export declare const unwrap: <R, E, R2, InErr, InElem, InDone, OutErr, OutElem, OutDone>(
  channel: Effect.Effect<R, E, Channel<R2, InErr, InElem, InDone, OutErr, OutElem, OutDone>>
) => Channel<R | R2, InErr, InElem, InDone, E | OutErr, OutElem, OutDone>
```
