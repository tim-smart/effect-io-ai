# concatAll

Concat sequentially a channel of channels.

To import and use `concatAll` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.concatAll
undefined

**Signature**

```ts
export declare const concatAll: <OutElem, InElem, OutErr, InErr, InDone, Env>(
  channels: Channel<Channel<OutElem, InElem, OutErr, InErr, any, InDone, Env>, InElem, OutErr, InErr, any, InDone, Env>
) => Channel<OutElem, InElem, OutErr, InErr, any, InDone, Env>
```
