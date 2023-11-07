# flatten

Returns a new channel, which flattens the terminal value of this channel.
This function may only be called if the terminal value of this channel is
another channel of compatible types.

To import and use `flatten` from the "Channel" module:

```ts
import * as Channel from 'effect/Channel'

// Can be accessed like this
Channel.flatten
```

**Signature**

```ts
export declare const flatten: <
  Env,
  InErr,
  InElem,
  InDone,
  OutErr,
  OutElem,
  Env1,
  InErr1,
  InElem1,
  InDone1,
  OutErr1,
  OutElem1,
  OutDone2
>(
  self: Channel<
    Env,
    InErr,
    InElem,
    InDone,
    OutErr,
    OutElem,
    Channel<Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, OutDone2>
  >
) => Channel<
  Env | Env1,
  InErr & InErr1,
  InElem & InElem1,
  InDone & InDone1,
  OutErr | OutErr1,
  OutElem | OutElem1,
  OutDone2
>
```
