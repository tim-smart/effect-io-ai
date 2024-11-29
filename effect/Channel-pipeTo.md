# pipeTo

Returns a new channel that pipes the output of this channel into the
specified channel. The returned channel has the input type of this channel,
and the output type of the specified channel, terminating with the value of
the specified channel.

To import and use `pipeTo` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.pipeTo
undefined

**Signature**

```ts
export declare const pipeTo: {
  <OutElem2, OutElem, OutErr2, OutErr, OutDone2, OutDone, Env2>(
    that: Channel<OutElem2, OutElem, OutErr2, OutErr, OutDone2, OutDone, Env2>
  ): <InElem, InErr, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<OutElem2, InElem, OutErr2, InErr, OutDone2, InDone, Env2 | Env>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutElem2, OutErr2, OutDone2, Env2>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    that: Channel<OutElem2, OutElem, OutErr2, OutErr, OutDone2, OutDone, Env2>
  ): Channel<OutElem2, InElem, OutErr2, InErr, OutDone2, InDone, Env | Env2>
}
```
