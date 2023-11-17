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
  ): <Env, InElem, InDone, OutErr, OutElem, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env, InErr0, InElem, InDone, OutErr, OutElem, OutDone>
  <Env, InElem, InDone, OutErr, OutElem, OutDone, InErr0, InErr>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (a: InErr0) => InErr
  ): Channel<Env, InErr0, InElem, InDone, OutErr, OutElem, OutDone>
}
```
