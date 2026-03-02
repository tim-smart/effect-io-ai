Package: `effect`<br />
Module: `index`<br />

## index.Prompt

Re-exports all named exports from the "./Prompt.ts" module as `Prompt`.

**Example**

```ts
import { Prompt } from "effect/unstable/ai"

// Create a structured conversation
const conversation = Prompt.make([
  {
    role: "system",
    content: "You are a helpful assistant specialized in mathematics."
  },
  {
    role: "user",
    content: [{
      type: "text",
      text: "What is the derivative of x²?"
    }]
  },
  {
    role: "assistant",
    content: [{
      type: "text",
      text: "The derivative of x² is 2x."
    }]
  }
])
```

**Example**

```ts
import { Prompt } from "effect/unstable/ai"

// Concatenate multiple prompts together sequentially
const systemPrompt = Prompt.make([{
  role: "system",
  content: "You are a coding assistant."
}])

const userPrompt = Prompt.make("Help me write a function")

const combined = Prompt.concat(systemPrompt, userPrompt)
```

**Signature**

```ts
export * as Prompt from "./Prompt.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L359)

Since v4.0.0