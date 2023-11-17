# as

Returns a new channel that is the same as this one, except the terminal
value of the channel is the specified constant value.

This method produces the same result as mapping this channel to the
specified constant value.

To import and use `as` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.as
```

**Signature**

```ts
export declare const as: {
  <OutDone2>(
    value: OutDone2
  ): <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone2>
  <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone, OutDone2>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    value: OutDone2
  ): Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone2>
}
```
