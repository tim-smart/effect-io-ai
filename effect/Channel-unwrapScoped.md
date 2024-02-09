# unwrapScoped

Makes a channel from a managed that returns a channel in case of success.

To import and use `unwrapScoped` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.unwrapScoped
```

**Signature**

```ts
export declare const unwrapScoped: <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, E, R>(
  self: Effect.Effect<Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, E, R>
) => Channel<OutElem, InElem, OutErr | E, InErr, OutDone, InDone, Env | Exclude<R, Scope.Scope>>
```
