Package: `effect`<br />
Module: `LanguageModel`<br />

## LanguageModel.defaultCodecTransformer

The default codec transformer that passes schemas through without
provider-specific rewrites.

**When to use**

Use as the codec transformer for provider implementations when the provider
accepts the JSON Schema generated from an `Effect` Schema codec without
provider-specific rewrites.

**Details**

The transformer returns the original codec, resolves a top-level `$ref`, and
copies schema definitions into `$defs`.

**See**

- `CodecTransformer` for the structured-output transformer contract
- `make` for where this transformer is used as the default

**Signature**

```ts
declare const defaultCodecTransformer: CodecTransformer
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L220)

Since v4.0.0