Package: `effect`<br />
Module: `Tokenizer`<br />

## Tokenizer.Tokenizer

The `Tokenizer` service tag for dependency injection.

This tag provides access to tokenization functionality throughout your
application, enabling token counting and prompt truncation capabilities.

**Example**

```ts
import { Effect } from "effect"
import { Tokenizer } from "effect/unstable/ai"

const useTokenizer = Effect.gen(function*() {
  const tokenizer = yield* Tokenizer.Tokenizer
  const tokens = yield* tokenizer.tokenize("Hello, world!")
  return tokens.length
})
```

**Signature**

```ts
declare class Tokenizer
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tokenizer.ts#L65)

Since v4.0.0