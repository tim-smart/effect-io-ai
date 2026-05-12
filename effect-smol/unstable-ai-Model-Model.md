Package: `effect`<br />
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
  extends Layer.Layer<Provides | ProviderName | ModelName, never, Requires>
{
  readonly [TypeId]: typeof TypeId

  /**
   * The provider identifier (e.g., "openai", "anthropic", "amazon-bedrock").
   */
  readonly provider: Provider

  /**
   * Returns a `Layer` with the requirements satisfied, using the current context.
   */
  readonly captureRequirements: Effect.Effect<
    Layer.Layer<Provides | ProviderName | ModelName>,
    never,
    Requires
  >
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L56)

Since v4.0.0