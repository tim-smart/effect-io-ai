Package: `effect`<br />
Module: `LanguageModel`<br />

## LanguageModel.ToolkitInput

The supported toolkit input shapes for language model operation options.

Unlike `ToolkitOption`, this type does not distribute over unions. It is
intended for call-site assignability, while `ToolkitOption` remains the
distributive helper used for extraction and inference.

**Signature**

```ts
type ToolkitInput<Tools, E, R> = | ToolkitOption<Tools, E, R>
  | Toolkit.WithHandler<Tools>
  | Effect.Effect<
    Toolkit.WithHandler<Tools>,
    E,
    R
  >
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L549)

Since v4.0.0