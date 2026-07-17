Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.RawInput

Raw input accepted by `make`: a string, an iterable of encoded messages, or
an existing `Prompt`.

**Example** (Accepting raw prompt input)

```ts
import type { Prompt } from "effect/unstable/ai"

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Prompt.ts#L1788)

Since v4.0.0