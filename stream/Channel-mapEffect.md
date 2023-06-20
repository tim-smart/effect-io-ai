# mapEffect

Returns a new channel, which is the same as this one, except the terminal
value of the returned channel is created by applying the specified
effectful function to the terminal value of this channel.

To import and use `mapEffect` from the "Channel" module:

```ts
import * as Channel from '@effect/stream/Channel'

// Can be accessed like this
Channel.mapEffect
```

**Signature**

```ts
export declare const mapEffect: {
  <Env1, OutErr1, OutDone, OutDone1>(f: (o: OutDone) => Effect.Effect<Env1, OutErr1, OutDone1>): <
    Env,
    InErr,
    InElem,
    InDone,
    OutErr,
    OutElem
  >(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env1 | Env, InErr, InElem, InDone, OutErr1 | OutErr, OutElem, OutDone1>
  <Env, InErr, InElem, InDone, OutErr, OutElem, Env1, OutErr1, OutDone, OutDone1>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (o: OutDone) => Effect.Effect<Env1, OutErr1, OutDone1>
  ): Channel<Env | Env1, InErr, InElem, InDone, OutErr | OutErr1, OutElem, OutDone1>
}
```
