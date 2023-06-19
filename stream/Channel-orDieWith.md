# orDieWith

Keeps none of the errors, and terminates the fiber with them, using the
specified function to convert the `OutErr` into a defect.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const orDieWith: {
  <OutErr>(f: (e: OutErr) => unknown): <Env, InErr, InElem, InDone, OutElem, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env, InErr, InElem, InDone, never, OutElem, OutDone>
  <Env, InErr, InElem, InDone, OutElem, OutDone, OutErr>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (e: OutErr) => unknown
  ): Channel<Env, InErr, InElem, InDone, never, OutElem, OutDone>
}
```
