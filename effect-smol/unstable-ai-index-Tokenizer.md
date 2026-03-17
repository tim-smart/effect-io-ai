Package: `effect`<br />
Module: `index`<br />

## index.Tokenizer

Re-exports all named exports from the "./Tokenizer.ts" module as `Tokenizer`.

**Example**

```ts
import { Effect } from "effect"
import { Tokenizer } from "effect/unstable/ai"

const tokenizeText = Effect.gen(function*() {
  const tokenizer = yield* Tokenizer.Tokenizer
  const tokens = yield* tokenizer.tokenize("Hello, world!")
  console.log(`Token count: ${tokens.length}`)
  return tokens
})
```

**Example**

```ts
import { Effect } from "effect"
import { Tokenizer } from "effect/unstable/ai"

// Truncate a prompt to fit within token limits
const truncatePrompt = Effect.gen(function*() {
  const tokenizer = yield* Tokenizer.Tokenizer
  const longPrompt = "This is a very long prompt..."
  const truncated = yield* tokenizer.truncate(longPrompt, 100)
  return truncated
})
```

**Signature**

```ts
export * as Tokenizer from "./Tokenizer.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L486)

Since v4.0.0