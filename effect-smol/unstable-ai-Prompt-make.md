Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.make

Creates a Prompt from an input.

This is the primary constructor for creating prompts, supporting multiple
input formats for convenience and flexibility.

**Example**

```ts
import { Prompt } from "effect/unstable/ai"

// From string - creates a user message
const textPrompt = Prompt.make("Hello, how are you?")

// From messages array
const structuredPrompt = Prompt.make([
  { role: "system", content: "You are a helpful assistant." },
  { role: "user", content: [{ type: "text", text: "Hi!" }] }
])

// From existing prompt
declare const existingPrompt: Prompt.Prompt
const copiedPrompt = Prompt.make(existingPrompt)
```

**Signature**

```ts
declare const make: (input: RawInput) => Prompt
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L1845)

Since v4.0.0