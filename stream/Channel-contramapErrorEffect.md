# contramapErrorEffect

Returns a new channel which is the same as this one but applies the given
effectual function to the input channel's error value.

To import and use `contramapErrorEffect` from the "Channel" module:

```ts
import * as Channel from '@effect/stream/Channel'

// Can be accessed like this
Channel.contramapErrorEffect
```

**Signature**

```ts
export declare const contramapErrorEffect: {
  <Env1, InErr0, InErr, InDone>(f: (error: InErr0) => Effect.Effect<Env1, InErr, InDone>): <
    Env,
    InElem,
    OutErr,
    OutElem,
    OutDone
  >(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env1 | Env, InErr0, InElem, InDone, OutErr, OutElem, OutDone>
  <Env, InElem, OutErr, OutElem, OutDone, Env1, InErr0, InErr, InDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (error: InErr0) => Effect.Effect<Env1, InErr, InDone>
  ): Channel<Env | Env1, InErr0, InElem, InDone, OutErr, OutElem, OutDone>
}
```