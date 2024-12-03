# embedInput

Returns a new channel which connects the given `AsyncInputProducer` as
this channel's input.

To import and use `embedInput` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.embedInput
```

**Signature**

```ts
export declare const embedInput: {
  <InErr, InElem, InDone>(
    input: SingleProducerAsyncInput.AsyncInputProducer<InErr, InElem, InDone>
  ): <OutElem, OutErr, OutDone, Env>(
    self: Channel<OutElem, unknown, OutErr, unknown, OutDone, unknown, Env>
  ) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  <OutElem, OutErr, OutDone, Env, InErr, InElem, InDone>(
    self: Channel<OutElem, unknown, OutErr, unknown, OutDone, unknown, Env>,
    input: SingleProducerAsyncInput.AsyncInputProducer<InErr, InElem, InDone>
  ): Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
}
```
