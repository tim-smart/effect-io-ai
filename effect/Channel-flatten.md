# flatten

Returns a new channel, which flattens the terminal value of this channel.
This function may only be called if the terminal value of this channel is
another channel of compatible types.

To import and use `flatten` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.flatten
```

**Signature**

```ts
export declare const flatten: <
  OutElem,
  InElem,
  OutErr,
  InErr,
  OutElem1,
  InElem1,
  OutErr1,
  InErr1,
  OutDone2,
  InDone1,
  Env1,
  InDone,
  Env
>(
  self: Channel<
    OutElem,
    InElem,
    OutErr,
    InErr,
    Channel<OutElem1, InElem1, OutErr1, InErr1, OutDone2, InDone1, Env1>,
    InDone,
    Env
  >
) => Channel<
  OutElem | OutElem1,
  InElem & InElem1,
  OutErr | OutErr1,
  InErr & InErr1,
  OutDone2,
  InDone & InDone1,
  Env1 | Env
>
```
