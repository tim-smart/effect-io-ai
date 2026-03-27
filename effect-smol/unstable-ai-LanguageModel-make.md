Package: `effect`<br />
Module: `LanguageModel`<br />

## LanguageModel.make

Creates a LanguageModel service from provider-specific implementations.

This constructor takes provider-specific implementations for text generation
and streaming text generation and returns a LanguageModel service.

**Signature**

```ts
declare const make: (params: { readonly generateText: (options: ProviderOptions) => Effect.Effect<Array<Response.PartEncoded>, AiError.AiError, IdGenerator>; readonly streamText: (options: ProviderOptions) => Stream.Stream<Response.StreamPartEncoded, AiError.AiError, IdGenerator>; readonly codecTransformer?: CodecTransformer | undefined; }) => Effect.Effect<Service>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L753)

Since v4.0.0