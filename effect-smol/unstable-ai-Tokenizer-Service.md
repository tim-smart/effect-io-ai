Package: `effect`<br />
Module: `Tokenizer`<br />

## Tokenizer.Service

Tokenizer service interface providing text tokenization and truncation
operations.

This interface defines the core operations for converting text to tokens and
managing content length within token limits for AI model compatibility.

**Example**

```ts
import { Effect } from "effect"
import type { Tokenizer } from "effect/unstable/ai"
import { Prompt } from "effect/unstable/ai"

const customTokenizer: Tokenizer.Service = {
  tokenize: (input) =>
    Effect.succeed(input.toString().split(" ").map((_, i) => i)),
  truncate: (input, maxTokens) =>
    Effect.succeed(Prompt.make(input.toString().slice(0, maxTokens * 5)))
}
```

**Signature**

```ts
export interface Service {
  /**
   * Converts text input into an array of token numbers.
   */
  readonly tokenize: (
    /**
     * The text input to tokenize.
     */
    input: Prompt.RawInput
  ) => Effect.Effect<Array<number>, AiError.AiError>
  /**
   * Truncates text input to fit within the specified token limit.
   */
  readonly truncate: (
    /**
     * The text input to truncate.
     */
    input: Prompt.RawInput,
    /**
     * Maximum number of tokens to retain.
     */
    tokens: number
  ) => Effect.Effect<Prompt.Prompt, AiError.AiError>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tokenizer.ts#L93)

Since v4.0.0