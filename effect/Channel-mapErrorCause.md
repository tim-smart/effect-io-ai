# mapErrorCause

A more powerful version of `mapError` which also surfaces the `Cause`
of the channel failure.

To import and use `mapErrorCause` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.mapErrorCause
```

**Signature**

```ts
export declare const mapErrorCause: {
  <OutErr, OutErr2>(
    f: (cause: Cause.Cause<OutErr>) => Cause.Cause<OutErr2>
  ): <OutElem, InElem, InErr, OutDone, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<OutElem, InElem, OutErr2, InErr, OutDone, InDone, Env>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutErr2>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    f: (cause: Cause.Cause<OutErr>) => Cause.Cause<OutErr2>
  ): Channel<OutElem, InElem, OutErr2, InErr, OutDone, InDone, Env>
}
```
