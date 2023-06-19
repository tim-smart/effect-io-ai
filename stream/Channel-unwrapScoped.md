# unwrapScoped

Makes a channel from a managed that returns a channel in case of success.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const unwrapScoped: <R, E, Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>(
  self: Effect.Effect<Scope.Scope | R, E, Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>>
) => Channel<Env | Exclude<R, Scope.Scope>, InErr, InElem, InDone, E | OutErr, OutElem, OutDone>
```
