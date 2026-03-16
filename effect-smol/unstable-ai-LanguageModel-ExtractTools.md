Package: `effect`<br />
Module: `LanguageModel`<br />

## LanguageModel.ExtractTools

Utility type that extracts the toolset from LanguageModel options.

**Signature**

```ts
type ExtractTools<Options> = Options extends {
  readonly toolkit: infer ToolkitValue
} ? ExtractToolsFromToolkitOption<Exclude<ToolkitValue, undefined>>
  : {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L499)

Since v4.0.0