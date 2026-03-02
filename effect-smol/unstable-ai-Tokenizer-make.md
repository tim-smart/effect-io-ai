Package: `effect`<br />
Module: `Tokenizer`<br />

## Tokenizer.make

Creates a Tokenizer service implementation from tokenization options.

This function constructs a complete Tokenizer service by providing a
tokenization function. The service handles both tokenization and
truncation operations using the provided tokenizer.

**Example**

```ts
import { Effect } from "effect"
import { Tokenizer } from "effect/unstable/ai"

// Simple word-based tokenizer
const wordTokenizer = Tokenizer.make({
  tokenize: (prompt) =>
    Effect.succeed(
      prompt.content
        .flatMap((msg) =>
          typeof msg.content === "string"
            ? msg.content.split(" ")
            : msg.content.flatMap((part) =>
              part.type === "text" ? part.text.split(" ") : []
            )
        )
        .map((_, index) => index)
    )
})
```

**Signature**

```ts
declare const make: (options: { readonly tokenize: (content: Prompt.Prompt) => Effect.Effect<Array<number>, AiError.AiError>; }) => Service
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tokenizer.ts#L150)

Since v4.0.0