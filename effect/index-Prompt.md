Package: `@effect/ai`<br />
Module: `index`<br />

## index.Prompt

Re-exports all named exports from the "./Prompt.js" module as `Prompt`.

**Example**

```ts
import { Prompt } from "@effect/ai"

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
import { Prompt } from "@effect/ai"

// Merge multiple prompts
const systemPrompt = Prompt.make([{
  role: "system",
  content: "You are a coding assistant."
}])

const userPrompt = Prompt.make("Help me write a function")

const combined = Prompt.merge(systemPrompt, userPrompt)
```

**Signature**

```ts
export * as Prompt from "./Prompt.js"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/index.ts#L375)

Since v1.0.0