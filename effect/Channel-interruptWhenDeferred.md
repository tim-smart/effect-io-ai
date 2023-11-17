# interruptWhenDeferred

Returns a new channel, which is the same as this one, except it will be
interrupted when the specified deferred is completed. If the deferred is
completed before the underlying channel is done, then the returned channel
will yield the value of the deferred. Otherwise, if the underlying channel
finishes first, then the returned channel will yield the value of the
underlying channel.

To import and use `interruptWhenDeferred` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.interruptWhenDeferred
```

**Signature**

```ts
export declare const interruptWhenDeferred: {
  <OutErr1, OutDone1>(
    deferred: Deferred.Deferred<OutErr1, OutDone1>
  ): <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env, InErr, InElem, InDone, OutErr1 | OutErr, OutElem, OutDone1 | OutDone>
  <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone, OutErr1, OutDone1>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    deferred: Deferred.Deferred<OutErr1, OutDone1>
  ): Channel<Env, InErr, InElem, InDone, OutErr | OutErr1, OutElem, OutDone | OutDone1>
}
```
