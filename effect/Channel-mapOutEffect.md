# mapOutEffect

Creates a channel that is like this channel but the given effectful function
gets applied to each emitted output element.

To import and use `mapOutEffect` from the "Channel" module:

```ts
import * as Channel from 'effect/Channel'

// Can be accessed like this
Channel.mapOutEffect
```

**Signature**

```ts
export declare const mapOutEffect: {
  <OutElem, Env1, OutErr1, OutElem1>(f: (o: OutElem) => Effect.Effect<Env1, OutErr1, OutElem1>): <
    Env,
    InErr,
    InElem,
    InDone,
    OutErr,
    OutDone
  >(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env1 | Env, InErr, InElem, InDone, OutErr1 | OutErr, OutElem1, OutDone>
  <Env, InErr, InElem, InDone, OutErr, OutDone, OutElem, Env1, OutErr1, OutElem1>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (o: OutElem) => Effect.Effect<Env1, OutErr1, OutElem1>
  ): Channel<Env | Env1, InErr, InElem, InDone, OutErr | OutErr1, OutElem1, OutDone>
}
```
