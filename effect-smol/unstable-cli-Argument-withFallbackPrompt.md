Package: `effect`<br />
Module: `Argument`<br />

## Argument.withFallbackPrompt

Adds a fallback prompt that is shown when a required argument is missing.

**Example**

```ts
import { Argument, Prompt } from "effect/unstable/cli"

const filename = Argument.string("filename").pipe(
  Argument.withFallbackPrompt(Prompt.text({ message: "Filename" }))
)
```

**Signature**

```ts
declare const withFallbackPrompt: { <B>(prompt: Param.FallbackPrompt<B>): <A>(self: Argument<A>) => Argument<A | B>; <A, B>(self: Argument<A>, prompt: Param.FallbackPrompt<B>): Argument<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L354)

Since v4.0.0