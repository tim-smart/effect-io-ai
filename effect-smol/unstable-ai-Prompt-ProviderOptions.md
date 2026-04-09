Package: `effect`<br />
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
declare const ProviderOptions: Schema.$Record<Schema.String, Schema.NullOr<Schema.Codec<Schema.Json, Schema.Json, never, never>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L87)

Since v4.0.0