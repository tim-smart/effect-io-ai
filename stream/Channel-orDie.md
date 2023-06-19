# orDie

Translates channel failure into death of the fiber, making all failures
unchecked and not a part of the type of the channel.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const orDie: {
  <E>(error: LazyArg<E>): <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env, InErr, InElem, InDone, never, OutElem, OutDone>
  <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone, E>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    error: LazyArg<E>
  ): Channel<Env, InErr, InElem, InDone, never, OutElem, OutDone>
}
```
