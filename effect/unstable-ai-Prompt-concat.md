Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.concat

Concatenates a prompt with additional raw input by concatenating messages.

**Details**

The returned prompt contains all messages from the original prompt followed
by the provided raw input, preserving message order.

**Example** (Concatenating prompts)

```ts
import { Prompt } from "effect/unstable/ai"

const systemPrompt = Prompt.make([{
  role: "system",
  content: "You are a helpful assistant."
}])

const merged = Prompt.concat(systemPrompt, "Hello, world!")
```

**Signature**

```ts
declare const concat: { (input: RawInput): (self: Prompt) => Prompt; (self: Prompt, input: RawInput): Prompt; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Prompt.ts#L2075)

Since v4.0.0