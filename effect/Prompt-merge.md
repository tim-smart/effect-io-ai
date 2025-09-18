Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.merge

Merges two prompts by concatenating their messages.

Creates a new prompt containing all messages from both prompts, maintaining
the order of messages within each prompt.

**Example**

```ts
import { Prompt } from "@effect/ai"

const systemPrompt = Prompt.make([{
  role: "system",
  content: "You are a helpful assistant."
}])

const userPrompt = Prompt.make("Hello, world!")

const merged = Prompt.merge(systemPrompt, userPrompt)
```

**Signature**

```ts
declare const merge: { (other: Prompt): (self: Prompt) => Prompt; (self: Prompt, other: Prompt): Prompt; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L1502)

Since v1.0.0