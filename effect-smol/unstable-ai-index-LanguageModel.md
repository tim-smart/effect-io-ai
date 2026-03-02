Package: `effect`<br />
Module: `index`<br />

## index.LanguageModel

Re-exports all named exports from the "./LanguageModel.ts" module as `LanguageModel`.

**Example**

```ts
import { Effect } from "effect"
import { LanguageModel } from "effect/unstable/ai"

// Basic text generation
const program = Effect.gen(function*() {
  const response = yield* LanguageModel.generateText({
    prompt: "Explain quantum computing"
  })

  console.log(response.text)

  return response
})
```

**Example**

```ts
import { Effect, Schema } from "effect"
import { LanguageModel } from "effect/unstable/ai"

// Structured output generation
const ContactSchema = Schema.Struct({
  name: Schema.String,
  email: Schema.String
})

const extractContact = Effect.gen(function*() {
  const response = yield* LanguageModel.generateObject({
    prompt: "Extract contact: John Doe, john@example.com",
    schema: ContactSchema
  })

  return response.value
})
```

**Signature**

```ts
export * as LanguageModel from "./LanguageModel.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L255)

Since v4.0.0