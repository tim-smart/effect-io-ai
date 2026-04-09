Package: `effect`<br />
Module: `AiError`<br />

## AiError.ProviderMetadata

Schema for provider-specific metadata which can be attached to error reasons.

Provider-specific metadata is namespaced by provider and has the structure:

```
{
  "<provider-name>": {
    // Provider-specific metadata (e.g. errorCode, requestId, etc.)
  }
}
```

**Signature**

```ts
declare const ProviderMetadata: Schema.$Record<Schema.String, Schema.NullOr<Schema.Codec<Schema.MutableJson, Schema.MutableJson, never, never>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L254)

Since v1.0.0