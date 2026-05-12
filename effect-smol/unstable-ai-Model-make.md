Package: `effect`<br />
Module: `Model`<br />

## Model.make

Creates a Model from a provider name and a Layer that constructs AI services.

**Example**

```ts
import type { Layer } from "effect"
import { Effect } from "effect"
import { LanguageModel, Model } from "effect/unstable/ai"

declare const bedrockLayer: Layer.Layer<LanguageModel.LanguageModel>

// Model automatically provides ProviderName and ModelName services
const checkProviderAndGenerate = Effect.gen(function*() {
  const provider = yield* Model.ProviderName
  const modelName = yield* Model.ModelName

  console.log(`Generating with: ${provider}/${modelName}`)

  return yield* LanguageModel.generateText({
    prompt: `Hello from ${provider}!`
  })
})

const program = checkProviderAndGenerate.pipe(
  Effect.provide(Model.make("amazon-bedrock", "claude-3-5-haiku", bedrockLayer))
)
// Will log: "Generating with: amazon-bedrock/claude-3-5-haiku"
```

**Signature**

```ts
declare const make: <const Provider extends string, const Name extends string, Provides, Requires>(provider: Provider, modelName: Name, layer: Layer.Layer<Provides, never, Requires>) => Model<Provider, Provides, Requires>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L158)

Since v4.0.0