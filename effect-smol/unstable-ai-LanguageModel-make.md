Package: `effect`<br />
Module: `LanguageModel`<br />

## LanguageModel.make

Creates a LanguageModel service from provider-specific text generation and streaming implementations.

**Signature**

```ts
declare const make: (params: { readonly generateText: (options: ProviderOptions) => Effect.Effect<Array<Response.PartEncoded>, AiError.AiError, IdGenerator>; readonly streamText: (options: ProviderOptions) => Stream.Stream<Response.StreamPartEncoded, AiError.AiError, IdGenerator>; readonly codecTransformer?: CodecTransformer | undefined; }) => Effect.Effect<Service>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L742)

Since v4.0.0