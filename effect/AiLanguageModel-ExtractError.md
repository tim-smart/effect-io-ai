Package: `@effect/ai`<br />
Module: `AiLanguageModel`<br />

## AiLanguageModel.ExtractError

A utility type to extract the error type for the text generation methods
of `AiLanguageModel` from the provided options.

**Signature**

```ts
type ExtractError<Options> = Options extends {
  toolkit: AiToolkit.ToHandler<infer _Tools>
} ? AiError | AiTool.Failure<_Tools>
  : Options extends {
    toolkit: Effect.Effect<AiToolkit.ToHandler<infer _Tools>, infer _E, infer _R>
  } ? AiError | AiTool.Failure<_Tools> | _E
  : AiError
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiLanguageModel.ts#L161)

Since v1.0.0