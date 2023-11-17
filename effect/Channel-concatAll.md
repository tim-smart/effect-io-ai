# concatAll

Concat sequentially a channel of channels.

To import and use `concatAll` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.concatAll
```

**Signature**

```ts
export declare const concatAll: <Env, InErr, InElem, InDone, OutErr, OutElem>(
  channels: Channel<Env, InErr, InElem, InDone, OutErr, Channel<Env, InErr, InElem, InDone, OutErr, OutElem, any>, any>
) => Channel<Env, InErr, InElem, InDone, OutErr, OutElem, any>
```
