Package: `effect`<br />
Module: `Response`<br />

## Response.ProviderMetadata

Schema for provider-specific metadata which can be attached to response parts.

Provider-specific metadata is namespaced by provider and has the structure:

```
{
  "<provider-specific-key>": {
    // Provider-specific metadata
  }
}
```

**Signature**

```ts
declare const ProviderMetadata: Schema.$Record<Schema.String, Schema.NullOr<Schema.Codec<Schema.Json, Schema.Json, never, never>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L456)

Since v1.0.0