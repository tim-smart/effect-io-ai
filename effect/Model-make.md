Package: `@effect/ai`<br />
Module: `Model`<br />

## Model.make

Creates a Model from a provider name and a Layer that constructs AI services.

**Example**

```ts
import { Model, LanguageModel } from "@effect/ai"
import { Effect, Layer } from "effect"

declare const bedrockLayer: Layer.Layer<LanguageModel.LanguageModel>

// Model automatically provides ProviderName service
const checkProviderAndGenerate = Effect.gen(function* () {
  const provider = yield* Model.ProviderName

  console.log(`Generating with: ${provider}`)

  return yield* LanguageModel.generateText({
    prompt: `Hello from ${provider}!`
  })
})

const program = checkProviderAndGenerate.pipe(
  Effect.provide(Model.make("amazon-bedrock", bedrockLayer))
)
// Will log: "Generating with: amazon-bedrock"
```

**Signature**

```ts
declare const make: <const Provider extends string, Provides, Requires>(provider: Provider, layer: Layer.Layer<Provides, never, Requires>) => Model<Provider, Provides, Requires>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Model.ts#L141)

Since v1.0.0