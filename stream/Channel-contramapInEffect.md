# contramapInEffect

Returns a new channel which is the same as this one but applies the given
effectual function to the input channel's output elements.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const contramapInEffect: {
  <Env1, InErr, InElem0, InElem>(f: (a: InElem0) => Effect.Effect<Env1, InErr, InElem>): <
    Env,
    InDone,
    OutErr,
    OutElem,
    OutDone
  >(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env1 | Env, InErr, InElem0, InDone, OutErr, OutElem, OutDone>
  <Env, InDone, OutErr, OutElem, OutDone, Env1, InErr, InElem0, InElem>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (a: InElem0) => Effect.Effect<Env1, InErr, InElem>
  ): Channel<Env | Env1, InErr, InElem0, InDone, OutErr, OutElem, OutDone>
}
```
