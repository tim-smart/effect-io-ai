Package: `@effect/ai`<br />
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
declare const ProviderMetadata: Schema.Record$<typeof Schema.String, Schema.UndefinedOr<Schema.Record$<typeof Schema.String, typeof Schema.Unknown>>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L449)

Since v1.0.0