Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.appendSystem

Creates a new prompt with a leading system message. If the prompt already has
a system message, the new message uses the provided content appended to the
first existing system message's content; the original messages remain after
it.

**Example** (Appending system instructions)

```ts
import { Prompt } from "effect/unstable/ai"

const systemPrompt = Prompt.make([{
  role: "system",
  content: "You are an expert in programming."
}])

const userPrompt = Prompt.make("Hello, world!")

const prompt = Prompt.concat(systemPrompt, userPrompt)

const replaced = Prompt.appendSystem(
  prompt,
  " You are a helpful assistant."
)
// result content: "You are an expert in programming. You are a helpful assistant."
```

**Signature**

```ts
declare const appendSystem: { (content: string): (self: Prompt) => Prompt; (self: Prompt, content: string): Prompt; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L2223)

Since v4.0.0