## embedInput

Returns a new channel which connects the given `AsyncInputProducer` as
this channel's input.

**Signature**

```ts
declare const embedInput: { <InErr, InElem, InDone>(input: SingleProducerAsyncInput.AsyncInputProducer<InErr, InElem, InDone>): <OutElem, OutErr, OutDone, Env>(self: Channel<OutElem, unknown, OutErr, unknown, OutDone, unknown, Env>) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>; <OutElem, OutErr, OutDone, Env, InErr, InElem, InDone>(self: Channel<OutElem, unknown, OutErr, unknown, OutDone, unknown, Env>, input: SingleProducerAsyncInput.AsyncInputProducer<InErr, InElem, InDone>): Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L697)

Since v2.0.0