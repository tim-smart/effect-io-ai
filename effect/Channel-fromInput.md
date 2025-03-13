Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromInput

Construct a `Channel` from an `AsyncInputConsumer`.

**Signature**

```ts
declare const fromInput: <Err, Elem, Done>(input: SingleProducerAsyncInput.AsyncInputConsumer<Err, Elem, Done>) => Channel<Elem, unknown, Err, unknown, Done, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1103)

Since v2.0.0