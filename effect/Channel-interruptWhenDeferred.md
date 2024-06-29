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
  <OutDone1, OutErr1>(
    deferred: Deferred.Deferred<OutDone1, OutErr1>
  ): <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<OutElem, InElem, OutErr1 | OutErr, InErr, OutDone1 | OutDone, InDone, Env>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutDone1, OutErr1>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    deferred: Deferred.Deferred<OutDone1, OutErr1>
  ): Channel<OutElem, InElem, OutErr | OutErr1, InErr, OutDone | OutDone1, InDone, Env>
}
```
