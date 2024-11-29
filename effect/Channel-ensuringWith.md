# ensuringWith

Returns a new channel with an attached finalizer. The finalizer is
guaranteed to be executed so long as the channel begins execution (and
regardless of whether or not it completes).

To import and use `ensuringWith` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.ensuringWith
undefined

**Signature**

```ts
export declare const ensuringWith: {
  <OutDone, OutErr, Env2>(
    finalizer: (e: Exit.Exit<OutDone, OutErr>) => Effect.Effect<unknown, never, Env2>
  ): <OutElem, InElem, InErr, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env2 | Env>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, Env2>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    finalizer: (e: Exit.Exit<OutDone, OutErr>) => Effect.Effect<unknown, never, Env2>
  ): Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env | Env2>
}
```
