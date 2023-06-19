# contramapEffect

Returns a new channel which is the same as this one but applies the given
effectual function to the input channel's done value.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const contramapEffect: {
  <Env1, InErr, InDone0, InDone>(f: (i: InDone0) => Effect.Effect<Env1, InErr, InDone>): <
    Env,
    InElem,
    OutErr,
    OutElem,
    OutDone
  >(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env1 | Env, InErr, InElem, InDone0, OutErr, OutElem, OutDone>
  <Env, InElem, OutErr, OutElem, OutDone, Env1, InErr, InDone0, InDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (i: InDone0) => Effect.Effect<Env1, InErr, InDone>
  ): Channel<Env | Env1, InErr, InElem, InDone0, OutErr, OutElem, OutDone>
}
```
