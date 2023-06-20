# embedInput

Returns a new channel which connects the given `AsyncInputProducer` as
this channel's input.

To import and use `embedInput` from the "Channel" module:

```ts
import * as Channel from '@effect/stream/Channel'

// Can be accessed like this
Channel.embedInput
```

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
