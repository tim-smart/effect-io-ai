Package: `@effect/ai`<br />
Module: `AiLanguageModel`<br />

## AiLanguageModel.ExtractSuccess

A utility type to extract the success type for the text generation methods
of `AiLanguageModel` from the provided options.

**Signature**

```ts
type ExtractSuccess<Options> = Options extends {
  disableToolCallResolution: true
} ? AiResponse.AiResponse
  : Options extends {
    toolkit: AiToolkit.ToHandler<infer _Tools>
  } ? AiResponse.WithToolCallResults<_Tools>
  : Options extends {
    toolkit: Effect.Effect<AiToolkit.ToHandler<infer _Tools>, infer _E, infer _R>
  } ? AiResponse.WithToolCallResults<_Tools>
  : AiResponse.AiResponse
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiLanguageModel.ts#L159)

Since v1.0.0