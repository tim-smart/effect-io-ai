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
  <OutElem, OutElem1, OutErr1, Env1>(
    f: (o: OutElem) => Effect.Effect<OutElem1, OutErr1, Env1>,
    n: number
  ): <InElem, OutErr, InErr, OutDone, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<OutElem1, InElem, OutErr1 | OutErr, InErr, OutDone, InDone, Env1 | Env>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutElem1, OutErr1, Env1>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    f: (o: OutElem) => Effect.Effect<OutElem1, OutErr1, Env1>,
    n: number
  ): Channel<OutElem1, InElem, OutErr | OutErr1, InErr, OutDone, InDone, Env | Env1>
}
```
