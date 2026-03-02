Package: `effect`<br />
Module: `Flag`<br />

## Flag.withFallbackPrompt

Adds a fallback prompt that is shown when a required flag is missing.

**Example**

```ts
import { Flag, Prompt } from "effect/unstable/cli"

const name = Flag.string("name").pipe(
  Flag.withFallbackPrompt(Prompt.text({ message: "Name" }))
)
```

**Signature**

```ts
declare const withFallbackPrompt: { <B>(prompt: Prompt.Prompt<B>): <A>(self: Flag<A>) => Flag<A | B>; <A, B>(self: Flag<A>, prompt: Prompt.Prompt<B>): Flag<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L537)

Since v4.0.0