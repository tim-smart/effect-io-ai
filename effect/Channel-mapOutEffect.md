# mapOutEffect

Creates a channel that is like this channel but the given effectful function
gets applied to each emitted output element.

To import and use `mapOutEffect` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.mapOutEffect
```

**Signature**

```ts
export declare const mapOutEffect: {
  <OutElem, OutElem1, OutErr1, Env1>(
    f: (o: OutElem) => Effect.Effect<OutElem1, OutErr1, Env1>
  ): <InElem, OutErr, InErr, OutDone, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<OutElem1, InElem, OutErr1 | OutErr, InErr, OutDone, InDone, Env1 | Env>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutElem1, OutErr1, Env1>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    f: (o: OutElem) => Effect.Effect<OutElem1, OutErr1, Env1>
  ): Channel<OutElem1, InElem, OutErr | OutErr1, InErr, OutDone, InDone, Env | Env1>
}
```
