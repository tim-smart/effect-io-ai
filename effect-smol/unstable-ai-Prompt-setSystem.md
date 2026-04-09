Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.setSystem

Creates a new prompt from the specified prompt with the system message set
to the specified text content.

**NOTE**: This method will remove and replace any previous system message
from the prompt.

**Example**

```ts
import { Prompt } from "effect/unstable/ai"

const systemPrompt = Prompt.make([{
  role: "system",
  content: "You are a helpful assistant."
}])

const userPrompt = Prompt.make("Hello, world!")

const prompt = Prompt.concat(systemPrompt, userPrompt)

const replaced = Prompt.setSystem(
  prompt,
  "You are an expert in programming"
)
```

**Signature**

```ts
declare const setSystem: { (content: string): (self: Prompt) => Prompt; (self: Prompt, content: string): Prompt; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L2109)

Since v4.0.0