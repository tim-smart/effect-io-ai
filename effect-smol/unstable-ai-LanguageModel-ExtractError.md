Package: `effect`<br />
Module: `LanguageModel`<br />

## LanguageModel.ExtractError

Utility type that extracts the error type from LanguageModel options.

Automatically infers the possible error types based on toolkit configuration
and tool call resolution settings.

**Signature**

```ts
type ExtractError<Options> = Options extends {
  readonly disableToolCallResolution: true
  readonly toolkit: infer ToolkitValue
} ? ExtractErrorFromToolkitOption<Exclude<ToolkitValue, undefined>, true>
  : Options extends {
    readonly toolkit: infer ToolkitValue
  } ? ExtractErrorFromToolkitOption<Exclude<ToolkitValue, undefined>, false>
  : Options extends {
    readonly disableToolCallResolution: true
  } ? AiError.AiError
  : AiError.AiError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L555)

Since v4.0.0