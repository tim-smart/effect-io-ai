# pipeTo

Returns a new channel that pipes the output of this channel into the
specified channel. The returned channel has the input type of this channel,
and the output type of the specified channel, terminating with the value of
the specified channel.

To import and use `pipeTo` from the "Channel" module:

```ts
import * as Channel from '@effect/stream/Channel'

// Can be accessed like this
Channel.pipeTo
```

**Signature**

```ts
export declare const pipeTo: {
  <Env2, OutErr, OutElem, OutDone, OutErr2, OutElem2, OutDone2>(
    that: Channel<Env2, OutErr, OutElem, OutDone, OutErr2, OutElem2, OutDone2>
  ): <Env, InErr, InElem, InDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env2 | Env, InErr, InElem, InDone, OutErr2, OutElem2, OutDone2>
  <Env, InErr, InElem, InDone, Env2, OutErr, OutElem, OutDone, OutErr2, OutElem2, OutDone2>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    that: Channel<Env2, OutErr, OutElem, OutDone, OutErr2, OutElem2, OutDone2>
  ): Channel<Env | Env2, InErr, InElem, InDone, OutErr2, OutElem2, OutDone2>
}
```
