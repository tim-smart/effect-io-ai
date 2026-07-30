Package: `@effect/ai`<br />
Module: `Tokenizer`<br />

## Tokenizer.Tokenizer

The `Tokenizer` service tag for dependency injection.

This tag provides access to tokenization functionality throughout your
application, enabling token counting and prompt truncation capabilities.

**Example**

```ts
import { Tokenizer } from "@effect/ai"
import { Effect } from "effect"

const useTokenizer = Effect.gen(function* () {
  const tokenizer = yield* Tokenizer.Tokenizer
  const tokens = yield* tokenizer.tokenize("Hello, world!")
  return tokens.length
})
```

**Signature**

```ts
declare class Tokenizer
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tokenizer.ts#L65)

Since v1.0.0