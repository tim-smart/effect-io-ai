# mapInputErrorEffect

Returns a new channel which is the same as this one but applies the given
effectual function to the input channel's error value.

To import and use `mapInputErrorEffect` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.mapInputErrorEffect
```

**Signature**

```ts
export declare const mapInputErrorEffect: {
  <InErr0, InDone, InErr, Env1>(
    f: (error: InErr0) => Effect.Effect<InDone, InErr, Env1>
  ): <OutElem, InElem, OutErr, OutDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<OutElem, InElem, OutErr, InErr0, OutDone, InDone, Env1 | Env>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, InErr0, Env1>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    f: (error: InErr0) => Effect.Effect<InDone, InErr, Env1>
  ): Channel<OutElem, InElem, OutErr, InErr0, OutDone, InDone, Env | Env1>
}
```
