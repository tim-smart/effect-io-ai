# mergeMap

Returns a new channel which creates a new channel for each emitted element
and merges some of them together. Different merge strategies control what
happens if there are more than the given maximum number of channels gets
created. See `Channel.mergeAll`.

To import and use `mergeMap` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.mergeMap
undefined

**Signature**

```ts
export declare const mergeMap: {
  <OutElem, OutElem1, InElem1, OutErr1, InErr1, Z, InDone1, Env1>(
    f: (outElem: OutElem) => Channel<OutElem1, InElem1, OutErr1, InErr1, Z, InDone1, Env1>,
    options: {
      readonly concurrency: number | "unbounded"
      readonly bufferSize?: number | undefined
      readonly mergeStrategy?: MergeStrategy.MergeStrategy | undefined
    }
  ): <InElem, OutErr, InErr, OutDone, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<OutElem1, InElem & InElem1, OutErr1 | OutErr, InErr & InErr1, unknown, InDone & InDone1, Env1 | Env>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutElem1, InElem1, OutErr1, InErr1, Z, InDone1, Env1>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    f: (outElem: OutElem) => Channel<OutElem1, InElem1, OutErr1, InErr1, Z, InDone1, Env1>,
    options: {
      readonly concurrency: number | "unbounded"
      readonly bufferSize?: number | undefined
      readonly mergeStrategy?: MergeStrategy.MergeStrategy | undefined
    }
  ): Channel<OutElem1, InElem & InElem1, OutErr | OutErr1, InErr & InErr1, unknown, InDone & InDone1, Env | Env1>
}
```
