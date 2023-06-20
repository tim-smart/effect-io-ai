# mergeMapBufferStrategy

Like `mergeMap`, but with a configurable `bufferSize` and `mergeStrategy` parameter.

To import and use `mergeMapBufferStrategy` from the "Channel" module:

```ts
import * as Channel from '@effect/stream/Channel'

// Can be accessed like this
Channel.mergeMapBufferStrategy
```

**Signature**

```ts
export declare const mergeMapBufferStrategy: {
  <OutElem, Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, Z>(
    f: (outElem: OutElem) => Channel<Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, Z>,
    n: number,
    bufferSize: number,
    mergeStrategy: MergeStrategy.MergeStrategy
  ): <Env, InErr, InElem, InDone, OutErr, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env1 | Env, InErr & InErr1, InElem & InElem1, InDone & InDone1, OutErr1 | OutErr, OutElem1, unknown>
  <Env, InErr, InElem, InDone, OutErr, OutDone, OutElem, Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, Z>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (outElem: OutElem) => Channel<Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, Z>,
    n: number,
    bufferSize: number,
    mergeStrategy: MergeStrategy.MergeStrategy
  ): Channel<Env | Env1, InErr & InErr1, InElem & InElem1, InDone & InDone1, OutErr | OutErr1, OutElem1, unknown>
}
```
