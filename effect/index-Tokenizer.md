Package: `@effect/ai`<br />
Module: `index`<br />

## index.Tokenizer

Re-exports all named exports from the "./Tokenizer.js" module as `Tokenizer`.

**Example**

```ts
import { Tokenizer, Prompt } from "@effect/ai"
import { Effect } from "effect"

const tokenizeText = Effect.gen(function* () {
  const tokenizer = yield* Tokenizer.Tokenizer
  const tokens = yield* tokenizer.tokenize("Hello, world!")
  console.log(`Token count: ${tokens.length}`)
  return tokens
})
```

**Example**

```ts
import { Tokenizer, Prompt } from "@effect/ai"
import { Effect } from "effect"

// Truncate a prompt to fit within token limits
const truncatePrompt = Effect.gen(function* () {
  const tokenizer = yield* Tokenizer.Tokenizer
  const longPrompt = "This is a very long prompt..."
  const truncated = yield* tokenizer.truncate(longPrompt, 100)
  return truncated
})
```

**Signature**

```ts
export * as Tokenizer from "./Tokenizer.js"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/index.ts#L479)

Since v1.0.0