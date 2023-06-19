# embedInput

Returns a new channel which connects the given `AsyncInputProducer` as
this channel's input.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const embedInput: {
  <InErr, InElem, InDone>(input: SingleProducerAsyncInput.AsyncInputProducer<InErr, InElem, InDone>): <
    Env,
    OutErr,
    OutElem,
    OutDone
  >(
    self: Channel<Env, unknown, unknown, unknown, OutErr, OutElem, OutDone>
  ) => Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  <Env, OutErr, OutElem, OutDone, InErr, InElem, InDone>(
    self: Channel<Env, unknown, unknown, unknown, OutErr, OutElem, OutDone>,
    input: SingleProducerAsyncInput.AsyncInputProducer<InErr, InElem, InDone>
  ): Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
}
```
