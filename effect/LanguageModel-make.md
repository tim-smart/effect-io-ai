Package: `@effect/ai`<br />
Module: `LanguageModel`<br />

## LanguageModel.make

Creates a LanguageModel service from provider-specific implementations.

This constructor takes provider-specific implementations for text generation
and streaming text generation and returns a LanguageModel service.

**Signature**

```ts
declare const make: (params: ConstructorParams) => Effect.Effect<Service>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/LanguageModel.ts#L560)

Since v1.0.0