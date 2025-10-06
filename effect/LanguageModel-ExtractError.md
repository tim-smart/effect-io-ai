Package: `@effect/ai`<br />
Module: `LanguageModel`<br />

## LanguageModel.ExtractError

Utility type that extracts the error type from LanguageModel options.

Automatically infers the possible error types based on toolkit configuration
and tool call resolution settings.

**Signature**

```ts
type ExtractError<Options> = Options extends {
  readonly toolkit: Toolkit.WithHandler<infer _Tools>
  readonly disableToolCallResolution: true
} ? AiError.AiError
  : Options extends {
    readonly toolkit: Effect.Effect<Toolkit.WithHandler<infer _Tools>, infer _E, infer _R>
    readonly disableToolCallResolution: true
  } ? AiError.AiError | _E
  : Options extends {
    readonly toolkit: Toolkit.WithHandler<infer _Tools>
  } ? AiError.AiError | Tool.HandlerError<_Tools[keyof _Tools]>
  : Options extends {
    readonly toolkit: Effect.Effect<Toolkit.WithHandler<infer _Tools>, infer _E, infer _R>
  } ? AiError.AiError | Tool.HandlerError<_Tools[keyof _Tools]> | _E :
  AiError.AiError
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/LanguageModel.ts#L417)

Since v1.0.0