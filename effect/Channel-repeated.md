# repeated

Creates a channel which repeatedly runs this channel.

To import and use `repeated` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.repeated
```

**Signature**

```ts
export declare const repeated: <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(
  self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
```
