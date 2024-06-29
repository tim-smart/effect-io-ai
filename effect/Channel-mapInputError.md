# mapInputError

Returns a new channel which is the same as this one but applies the given
function to the input channel's error value.

To import and use `mapInputError` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.mapInputError
```

**Signature**

```ts
export declare const mapInputError: {
  <InErr0, InErr>(
    f: (a: InErr0) => InErr
  ): <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<OutElem, InElem, OutErr, InErr0, OutDone, InDone, Env>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, InErr0>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    f: (a: InErr0) => InErr
  ): Channel<OutElem, InElem, OutErr, InErr0, OutDone, InDone, Env>
}
```
