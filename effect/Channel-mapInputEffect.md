# mapInputEffect

Returns a new channel which is the same as this one but applies the given
effectual function to the input channel's done value.

To import and use `mapInputEffect` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.mapInputEffect
```

**Signature**

```ts
export declare const mapInputEffect: {
  <InDone0, InDone, InErr, Env1>(
    f: (i: InDone0) => Effect.Effect<InDone, InErr, Env1>
  ): <OutElem, InElem, OutErr, OutDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone0, Env1 | Env>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, InDone0, Env1>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    f: (i: InDone0) => Effect.Effect<InDone, InErr, Env1>
  ): Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone0, Env | Env1>
}
```
