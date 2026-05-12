Package: `effect`<br />
Module: `LanguageModel`<br />

## LanguageModel.ExtractServices

Utility type that extracts the context requirements from LanguageModel options.

Automatically infers the required services based on the toolkit configuration.

**Signature**

```ts
type ExtractServices<Options> = Options extends {
  readonly disableToolCallResolution: true
} ? never
  : Options extends {
    readonly toolkit: infer Toolkit
  } ? ExtractServicesFromToolkitOption<Exclude<Toolkit, undefined>>
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L648)

Since v4.0.0