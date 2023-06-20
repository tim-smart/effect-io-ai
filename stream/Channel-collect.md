# collect

Returns a new channel, which is the same as this one, except its outputs
are filtered and transformed by the specified partial function.

To import and use `collect` from the "Channel" module:

```ts
import * as Channel from '@effect/stream/Channel'

// Can be accessed like this
Channel.collect
```

**Signature**

```ts
export declare const collect: {
  <Env, InErr, InElem, InDone, OutErr, OutElem, OutElem2, OutDone>(pf: (o: OutElem) => Option.Option<OutElem2>): (
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env, InErr, InElem, InDone, OutErr, OutElem2, OutDone>
  <Env, InErr, InElem, InDone, OutErr, OutElem, OutElem2, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    pf: (o: OutElem) => Option.Option<OutElem2>
  ): Channel<Env, InErr, InElem, InDone, OutErr, OutElem2, OutDone>
}
```
