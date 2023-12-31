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
  ): <Env, InErr, InElem, InDone, OutErr, OutElem>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone2>
  <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone, OutDone2>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (out: OutDone) => OutDone2
  ): Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone2>
}
```
