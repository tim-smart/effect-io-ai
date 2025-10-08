Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.merge

Merges a prompt with additional raw input by concatenating messages.

Creates a new prompt containing all messages from both the original prompt,
and the provided raw input, maintaining the order of messages.

**Example**

```ts
import { Prompt } from "@effect/ai"

const systemPrompt = Prompt.make([{
  role: "system",
  content: "You are a helpful assistant."
}])

const merged = Prompt.merge(systemPrompt, "Hello, world!")
```

**Signature**

```ts
declare const merge: { (input: RawInput): (self: Prompt) => Prompt; (self: Prompt, input: RawInput): Prompt; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L1707)

Since v1.0.0