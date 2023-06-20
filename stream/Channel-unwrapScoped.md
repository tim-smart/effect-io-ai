# unwrapScoped

Makes a channel from a managed that returns a channel in case of success.

To import and use `unwrapScoped` from the "Channel" module:

```ts
import * as Channel from '@effect/stream/Channel'

// Can be accessed like this
Channel.unwrapScoped
```

**Signature**

```ts
export declare const unwrapScoped: <R, E, Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>(
  self: Effect.Effect<Scope.Scope | R, E, Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>>
) => Channel<Env | Exclude<R, Scope.Scope>, InErr, InElem, InDone, E | OutErr, OutElem, OutDone>
```
