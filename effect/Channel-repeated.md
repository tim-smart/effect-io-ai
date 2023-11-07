# repeated

Creates a channel which repeatedly runs this channel.

To import and use `repeated` from the "Channel" module:

```ts
import * as Channel from 'effect/Channel'

// Can be accessed like this
Channel.repeated
```

**Signature**

```ts
export declare const repeated: <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>(
  self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
) => Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
```
