Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.empty

An empty prompt with no messages.

**Example** (Creating an empty prompt)

```ts
import { Prompt } from "effect/unstable/ai"

const emptyPrompt = Prompt.empty
console.log(emptyPrompt.content) // []
```

**Signature**

```ts
declare const empty: Prompt
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L1834)

Since v4.0.0