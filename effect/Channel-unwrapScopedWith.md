# unwrapScopedWith

Constructs a `Channel` from a function which receives a `Scope` and returns
an effect that will result in a `Channel` if successful.

To import and use `unwrapScopedWith` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.unwrapScopedWith
```

**Signature**

```ts
export declare const unwrapScopedWith: <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, E, R>(
  f: (scope: Scope.Scope) => Effect.Effect<Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, E, R>
) => Channel<OutElem, InElem, E | OutErr, InErr, OutDone, InDone, R | Env>
```
