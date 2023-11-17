# drain

Returns a new channel which reads all the elements from upstream's output
channel and ignores them, then terminates with the upstream result value.

To import and use `drain` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.drain
```

**Signature**

```ts
export declare const drain: <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>(
  self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
) => Channel<Env, InErr, InElem, InDone, OutErr, never, OutDone>
```
