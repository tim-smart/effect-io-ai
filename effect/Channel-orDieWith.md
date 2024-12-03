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
  ): <OutElem, InElem, InErr, OutDone, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<OutElem, InElem, never, InErr, OutDone, InDone, Env>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    f: (e: OutErr) => unknown
  ): Channel<OutElem, InElem, never, InErr, OutDone, InDone, Env>
}
```
