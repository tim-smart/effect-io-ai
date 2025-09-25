Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.ProviderOptions

Schema for provider-specific options which can be attached to both content
parts and messages, enabling provider-specific behavior.

Provider-specific options are namespaced by provider and have the structure:

```
{
  "<provider-specific-key>": {
    // Provider-specific options
  }
}
```

**Signature**

```ts
declare const ProviderOptions: Schema.Record$<typeof Schema.String, Schema.UndefinedOr<Schema.Record$<typeof Schema.String, typeof Schema.Unknown>>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L86)

Since v1.0.0