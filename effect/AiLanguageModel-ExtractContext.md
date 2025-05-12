Package: `@effect/ai`<br />
Module: `AiLanguageModel`<br />

## AiLanguageModel.ExtractContext

A utility type to extract the context type for the text generation methods
of `AiLanguageModel` from the provided options.

**Signature**

```ts
type ExtractContext<Options> = Options extends {
  toolkit: AiToolkit.ToHandler<infer _Tools>
} ? AiTool.Context<_Tools>
  : Options extends {
    toolkit: Effect.Effect<AiToolkit.ToHandler<infer _Tools>, infer _E, infer _R>
  } ? AiTool.Context<_Tools> | _R
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiLanguageModel.ts#L174)

Since v1.0.0