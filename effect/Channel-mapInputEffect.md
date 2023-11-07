# mapInputEffect

Returns a new channel which is the same as this one but applies the given
effectual function to the input channel's done value.

To import and use `mapInputEffect` from the "Channel" module:

```ts
import * as Channel from 'effect/Channel'

// Can be accessed like this
Channel.mapInputEffect
```

**Signature**

```ts
export declare const mapInputEffect: {
  <Env1, InErr, InDone0, InDone>(f: (i: InDone0) => Effect.Effect<Env1, InErr, InDone>): <
    Env,
    InElem,
    OutErr,
    OutElem,
    OutDone
  >(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env1 | Env, InErr, InElem, InDone0, OutErr, OutElem, OutDone>
  <Env, InElem, OutErr, OutElem, OutDone, Env1, InErr, InDone0, InDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (i: InDone0) => Effect.Effect<Env1, InErr, InDone>
  ): Channel<Env | Env1, InErr, InElem, InDone0, OutErr, OutElem, OutDone>
}
```
