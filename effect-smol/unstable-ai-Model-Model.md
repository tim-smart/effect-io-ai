Package: `effect`<br />
Module: `Model`<br />

## Model.Model

A Model represents a provider-specific AI service.

**When to use**

Use when you use a Model directly as a Layer to provide a particular model implementation
to an Effect program, or use it as an Effect to "lift" dependencies of the
Model constructor into the parent Effect when you want to use a Model from
within an Effect service.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L34)

Since v4.0.0