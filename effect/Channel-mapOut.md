# mapOut

Maps the output of this channel using the specified function.

To import and use `mapOut` from the "Channel" module:

```ts
import * as Channel from 'effect/Channel'

// Can be accessed like this
Channel.mapOut
```

**Signature**

```ts
export declare const mapOut: {
  <OutElem, OutElem2>(f: (o: OutElem) => OutElem2): <Env, InErr, InElem, InDone, OutErr, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env, InErr, InElem, InDone, OutErr, OutElem2, OutDone>
  <Env, InErr, InElem, InDone, OutErr, OutDone, OutElem, OutElem2>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (o: OutElem) => OutElem2
  ): Channel<Env, InErr, InElem, InDone, OutErr, OutElem2, OutDone>
}
```
