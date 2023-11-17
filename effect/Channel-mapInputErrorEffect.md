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
  <Env1, InErr0, InErr, InDone>(
    f: (error: InErr0) => Effect.Effect<Env1, InErr, InDone>
  ): <Env, InElem, OutErr, OutElem, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env1 | Env, InErr0, InElem, InDone, OutErr, OutElem, OutDone>
  <Env, InElem, OutErr, OutElem, OutDone, Env1, InErr0, InErr, InDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (error: InErr0) => Effect.Effect<Env1, InErr, InDone>
  ): Channel<Env | Env1, InErr0, InElem, InDone, OutErr, OutElem, OutDone>
}
```
