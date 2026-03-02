Package: `effect`<br />
Module: `LanguageModel`<br />

## LanguageModel.CurrentCodecTransformer

A `ServiceMap.Reference` that holds the current `CodecTransformer` used by
`LanguageModel.generateObject` to adapt structured output schemas for the
active provider.

By default, this is the identity function (no transformation). Provider
packages (e.g. `@effect/ai-anthropic`) override this reference with a
provider-specific transformer so that schemas are automatically rewritten
before being sent to the model as well as before decoding the generated value.

**Signature**

```ts
declare const CurrentCodecTransformer: ServiceMap.Reference<CodecTransformer>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L196)

Since v4.0.0