# mapOut

Maps the output of this channel using the specified function.

To import and use `mapOut` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.mapOut
```

**Signature**

```ts
export declare const mapOut: {
  <OutElem, OutElem2>(
    f: (o: OutElem) => OutElem2
  ): <InElem, OutErr, InErr, OutDone, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<OutElem2, InElem, OutErr, InErr, OutDone, InDone, Env>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutElem2>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    f: (o: OutElem) => OutElem2
  ): Channel<OutElem2, InElem, OutErr, InErr, OutDone, InDone, Env>
}
```
