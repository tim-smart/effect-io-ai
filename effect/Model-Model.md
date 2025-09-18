Package: `@effect/ai`<br />
Module: `Model`<br />

## Model.Model

A Model represents a provider-specific AI service.

A Model can be used directly as a Layer to provide a particular model
implementation to an Effect program.

A Model can also be used as an Effect to "lift" dependencies of the Model
constructor into the parent Effect. This is particularly useful when you
want to use a Model from within an Effect service.

**Signature**

```ts
export interface Model<in out Provider, in out Provides, in out Requires>
  extends
    Layer.Layer<Provides | ProviderName, never, Requires>,
    Effect.Effect<Layer.Layer<Provides | ProviderName>, never, Requires>
{
  readonly [TypeId]: TypeId
  /**
   * The provider identifier (e.g., "openai", "anthropic", "amazon-bedrock").
   */
  readonly provider: Provider
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Model.ts#L69)

Since v1.0.0