# drain

Returns a new channel which reads all the elements from upstream's output
channel and ignores them, then terminates with the upstream result value.

To import and use `drain` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.drain
undefined

**Signature**

```ts
export declare const drain: <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(
  self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
) => Channel<never, InElem, OutErr, InErr, OutDone, InDone, Env>
```
