# mergeMap

Returns a new channel which creates a new channel for each emitted element
and merges some of them together. Different merge strategies control what
happens if there are more than the given maximum number of channels gets
created. See `Channel.mergeAll`.

To import and use `mergeMap` from the "Channel" module:

```ts
import * as Channel from 'effect/Channel'

// Can be accessed like this
Channel.mergeMap
```

**Signature**

```ts
export declare const mergeMap: {
  <OutElem, Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, Z>(
    f: (outElem: OutElem) => Channel<Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, Z>,
    options: {
      readonly concurrency: number | 'unbounded'
      readonly bufferSize?: number
      readonly mergeStrategy?: MergeStrategy.MergeStrategy
    }
  ): <Env, InErr, InElem, InDone, OutErr, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env1 | Env, InErr & InErr1, InElem & InElem1, InDone & InDone1, OutErr1 | OutErr, OutElem1, unknown>
  <Env, InErr, InElem, InDone, OutErr, OutDone, OutElem, Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, Z>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (outElem: OutElem) => Channel<Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, Z>,
    options: {
      readonly concurrency: number | 'unbounded'
      readonly bufferSize?: number
      readonly mergeStrategy?: MergeStrategy.MergeStrategy
    }
  ): Channel<Env | Env1, InErr & InErr1, InElem & InElem1, InDone & InDone1, OutErr | OutErr1, OutElem1, unknown>
}
```
