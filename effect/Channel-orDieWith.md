# orDieWith

Keeps none of the errors, and terminates the fiber with them, using the
specified function to convert the `OutErr` into a defect.

To import and use `orDieWith` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.orDieWith
```

**Signature**

```ts
export declare const orDieWith: {
  <OutErr>(
    f: (e: OutErr) => unknown
  ): <Env, InErr, InElem, InDone, OutElem, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env, InErr, InElem, InDone, never, OutElem, OutDone>
  <Env, InErr, InElem, InDone, OutElem, OutDone, OutErr>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (e: OutErr) => unknown
  ): Channel<Env, InErr, InElem, InDone, never, OutElem, OutDone>
}
```
