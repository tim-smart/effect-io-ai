Package: `@effect/ai`<br />
Module: `index`<br />

## index.LanguageModel

Re-exports all named exports from the "./LanguageModel.js" module as `LanguageModel`.

**Example**

```ts
import { LanguageModel } from "@effect/ai"
import { Effect } from "effect"

// Basic text generation
const program = Effect.gen(function* () {
  const response = yield* LanguageModel.generateText({
    prompt: "Explain quantum computing"
  })

  console.log(response.text)

  return response
})
```

**Example**

```ts
import { LanguageModel } from "@effect/ai"
import { Effect, Schema } from "effect"

// Structured output generation
const ContactSchema = Schema.Struct({
  name: Schema.String,
  email: Schema.String
})

const extractContact = Effect.gen(function* () {
  const response = yield* LanguageModel.generateObject({
    prompt: "Extract contact: John Doe, john@example.com",
    schema: ContactSchema
  })

  return response.value
})
```

**Signature**

```ts
export * as LanguageModel from "./LanguageModel.js"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/index.ts#L279)

Since v1.0.0