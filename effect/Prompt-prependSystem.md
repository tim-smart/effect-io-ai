Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.prependSystem

Creates a new prompt from the specified prompt with the provided text content
prepended to the start of existing system message content.

If no system message exists in the specified prompt, the provided content
will be used to create a system message.

**Example**

```ts
import { Prompt } from "@effect/ai"

const systemPrompt = Prompt.make([{
  role: "system",
  content: "You are an expert in programming."
}])

const userPrompt = Prompt.make("Hello, world!")

const prompt = Prompt.merge(systemPrompt, userPrompt)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L1787)

Since v1.0.0