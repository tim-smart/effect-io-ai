Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.prependSystem

Creates a new prompt with a leading system message. If the prompt already has
a system message, the new message uses the provided content prepended to the
first existing system message's content; the original messages remain after
it.

**Example** (Prepending system instructions)

```ts
import { Prompt } from "effect/unstable/ai"

const systemPrompt = Prompt.make([{
  role: "system",
  content: "You are an expert in programming."
}])

const userPrompt = Prompt.make("Hello, world!")

const prompt = Prompt.concat(systemPrompt, userPrompt)

const replaced = Prompt.prependSystem(
  prompt,
  "You are a helpful assistant. "
)
// result content: "You are a helpful assistant. You are an expert in programming."
```

**Signature**

```ts
declare const prependSystem: { (content: string): (self: Prompt) => Prompt; (self: Prompt, content: string): Prompt; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L2168)

Since v4.0.0