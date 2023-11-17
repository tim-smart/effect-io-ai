# mapOutEffectPar

Creates a channel that is like this channel but the given ZIO function gets
applied to each emitted output element, taking `n` elements at once and
mapping them in parallel.

To import and use `mapOutEffectPar` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.mapOutEffectPar
```

**Signature**

```ts
export declare const mapOutEffectPar: {
  <OutElem, Env1, OutErr1, OutElem1>(
    f: (o: OutElem) => Effect.Effect<Env1, OutErr1, OutElem1>,
    n: number
  ): <Env, InErr, InElem, InDone, OutErr, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env1 | Env, InErr, InElem, InDone, OutErr1 | OutErr, OutElem1, OutDone>
  <Env, InErr, InElem, InDone, OutErr, OutDone, OutElem, Env1, OutErr1, OutElem1>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (o: OutElem) => Effect.Effect<Env1, OutErr1, OutElem1>,
    n: number
  ): Channel<Env | Env1, InErr, InElem, InDone, OutErr | OutErr1, OutElem1, OutDone>
}
```
