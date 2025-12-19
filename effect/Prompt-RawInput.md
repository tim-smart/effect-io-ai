Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.RawInput

Raw input types that can be converted into a Prompt.

Supports various input formats for convenience, including simple strings,
message arrays, response parts, and existing prompts.

**Example**

```ts
import { Prompt } from "@effect/ai"

// String input - creates a user message
const stringInput: Prompt.RawInput = "Hello, world!"

// Message array input
const messagesInput: Prompt.RawInput = [
  { role: "system", content: "You are helpful." },
  { role: "user", content: [{ type: "text", text: "Hi!" }] }
]

// Existing prompt
declare const existingPrompt: Prompt.Prompt
const promptInput: Prompt.RawInput = existingPrompt
```

**Signature**

```ts
type RawInput = | string
  | Iterable<MessageEncoded>
  | Prompt
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L1412)

Since v1.0.0