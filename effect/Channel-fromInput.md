# fromInput

Construct a `Channel` from an `AsyncInputConsumer`.

To import and use `fromInput` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.fromInput
undefined

**Signature**

```ts
export declare const fromInput: <Err, Elem, Done>(
  input: SingleProducerAsyncInput.AsyncInputConsumer<Err, Elem, Done>
) => Channel<Elem, unknown, Err, unknown, Done, unknown>
```
