Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.concat

Concatenates a prompt with additional raw input by concatenating messages.

Creates a new prompt containing all messages from both the original prompt,
and the provided raw input, maintaining the order of messages.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L2068)

Since v4.0.0