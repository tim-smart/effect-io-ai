# map

Returns a new channel, which is the same as this one, except the terminal
value of the returned channel is created by applying the specified function
to the terminal value of this channel.

To import and use `map` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.map
```

**Signature**

```ts
export declare const map: {
  <OutDone, OutDone2>(
    f: (out: OutDone) => OutDone2
  ): <OutElem, InElem, OutErr, InErr, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<OutElem, InElem, OutErr, InErr, OutDone2, InDone, Env>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutDone2>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    f: (out: OutDone) => OutDone2
  ): Channel<OutElem, InElem, OutErr, InErr, OutDone2, InDone, Env>
}
```
