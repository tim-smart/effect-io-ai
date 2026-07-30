Package: `@effect/ai`<br />
Module: `Tokenizer`<br />

## Tokenizer.make

Creates a Tokenizer service implementation from tokenization options.

This function constructs a complete Tokenizer service by providing a
tokenization function. The service handles both tokenization and
truncation operations using the provided tokenizer.

**Example**

```ts
import { Tokenizer, Prompt } from "@effect/ai"
import { Effect } from "effect"

// Simple word-based tokenizer
const wordTokenizer = Tokenizer.make({
  tokenize: (prompt) =>
    Effect.succeed(
      prompt.content
        .flatMap(msg =>
          typeof msg.content === "string"
            ? msg.content.split(' ')
            : msg.content.flatMap(part =>
                part.type === "text" ? part.text.split(' ') : []
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tokenizer.ts#L150)

Since v1.0.0