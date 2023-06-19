# fromInput

Construct a `Channel` from an `AsyncInputConsumer`.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const fromInput: <Err, Elem, Done>(
  input: SingleProducerAsyncInput.AsyncInputConsumer<Err, Elem, Done>
) => Channel<never, unknown, unknown, unknown, Err, Elem, Done>
```
