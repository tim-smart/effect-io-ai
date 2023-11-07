# pipeToOrFail

Returns a new channel that pipes the output of this channel into the
specified channel and preserves this channel's failures without providing
them to the other channel for observation.

To import and use `pipeToOrFail` from the "Channel" module:

```ts
import * as Channel from 'effect/Channel'

// Can be accessed like this
Channel.pipeToOrFail
```

**Signature**

```ts
export declare const pipeToOrFail: {
  <Env2, OutElem, OutDone, OutErr2, OutElem2, OutDone2>(
    that: Channel<Env2, never, OutElem, OutDone, OutErr2, OutElem2, OutDone2>
  ): <Env, InErr, InElem, InDone, OutErr>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env2 | Env, InErr, InElem, InDone, OutErr2 | OutErr, OutElem2, OutDone2>
  <Env, InErr, InElem, InDone, OutErr, Env2, OutElem, OutDone, OutErr2, OutElem2, OutDone2>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    that: Channel<Env2, never, OutElem, OutDone, OutErr2, OutElem2, OutDone2>
  ): Channel<Env | Env2, InErr, InElem, InDone, OutErr | OutErr2, OutElem2, OutDone2>
}
```
