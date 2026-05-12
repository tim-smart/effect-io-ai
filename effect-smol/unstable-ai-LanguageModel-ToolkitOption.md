Package: `effect`<br />
Module: `LanguageModel`<br />

## LanguageModel.ToolkitOption

The supported toolkit option shapes for language model operations.

**Signature**

```ts
type ToolkitOption<Tools, E, R> = Tools extends any ? (
    | Toolkit.WithHandler<Tools>
    | Effect.Effect<
      Toolkit.WithHandler<Tools>,
      E,
      R
    >
  )
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L525)

Since v4.0.0