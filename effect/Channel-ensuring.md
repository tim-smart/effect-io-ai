# ensuring

Returns a new channel with an attached finalizer. The finalizer is
guaranteed to be executed so long as the channel begins execution (and
regardless of whether or not it completes).

To import and use `ensuring` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.ensuring
```

**Signature**

```ts
export declare const ensuring: {
  <Z, Env1>(
    finalizer: Effect.Effect<Z, never, Env1>
  ): <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env1 | Env>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, Z, Env1>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    finalizer: Effect.Effect<Z, never, Env1>
  ): Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env | Env1>
}
```
