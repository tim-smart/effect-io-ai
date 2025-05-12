Package: `@effect/ai`<br />
Module: `AiResponse`<br />

## AiResponse.ProviderMetadata

Represents additional provider-specific metadata that was returned by the
model. Specific providers will use module augmentation to add their own
specific provider metadata.

The outer record is keyed by provider name, while the inner record is keyed
by the names of the provider-specific metadata properties.

For example:

```ts
const providerMeta = {
  "amazon-bedrock": {
    // Provider specific metadata
  }
}
```

**Signature**

```ts
export interface ProviderMetadata {}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiResponse.ts#L645)

Since v1.0.0