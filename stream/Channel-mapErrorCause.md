# mapErrorCause

A more powerful version of `mapError` which also surfaces the `Cause`
of the channel failure.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const mapErrorCause: {
  <OutErr, OutErr2>(f: (cause: Cause.Cause<OutErr>) => Cause.Cause<OutErr2>): <
    Env,
    InErr,
    InElem,
    InDone,
    OutElem,
    OutDone
  >(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env, InErr, InElem, InDone, OutErr2, OutElem, OutDone>
  <Env, InErr, InElem, InDone, OutElem, OutDone, OutErr, OutErr2>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (cause: Cause.Cause<OutErr>) => Cause.Cause<OutErr2>
  ): Channel<Env, InErr, InElem, InDone, OutErr2, OutElem, OutDone>
}
```
