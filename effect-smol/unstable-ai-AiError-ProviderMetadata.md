Package: `effect`<br />
Module: `AiError`<br />

## AiError.ProviderMetadata

Type of provider-specific metadata attached to AI error reasons.

Metadata is keyed by provider name, and each provider value is either mutable
JSON metadata or `null`.

**Signature**

```ts
type ProviderMetadata = typeof ProviderMetadata.Type
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L273)

Since v4.0.0