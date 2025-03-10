# unwrap

Constructs a `Channel` from an effect that will result in a `Channel` if
successful.

To import and use `unwrap` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.unwrap
```

**Signature**

```ts
export declare const unwrap: <OutElem, InElem, OutErr, InErr, OutDone, InDone, R2, E, R>(
  channel: Effect.Effect<Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, R2>, E, R>
) => Channel<OutElem, InElem, E | OutErr, InErr, OutDone, InDone, R | R2>
```
