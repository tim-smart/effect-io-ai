# contramap

Returns a new channel which is the same as this one but applies the given
function to the input channel's done value.

To import and use `contramap` from the "Channel" module:

```ts
import * as Channel from '@effect/stream/Channel'

// Can be accessed like this
Channel.contramap
```

**Signature**

```ts
export declare const contramap: {
  <InDone0, InDone>(f: (a: InDone0) => InDone): <Env, InErr, InElem, OutErr, OutElem, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env, InErr, InElem, InDone0, OutErr, OutElem, OutDone>
  <Env, InErr, InElem, OutErr, OutElem, OutDone, InDone0, InDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (a: InDone0) => InDone
  ): Channel<Env, InErr, InElem, InDone0, OutErr, OutElem, OutDone>
}
```
