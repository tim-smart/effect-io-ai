Package: `@effect/ai`<br />
Module: `LanguageModel`<br />

## LanguageModel.streamText

Generate text using a language model with streaming output.

Returns a stream of response parts that are emitted as soon as they are
available from the model, enabling real-time text generation experiences.

**Example**

```ts
import { LanguageModel } from "@effect/ai"
import { Effect, Stream, Console } from "effect"

const program = LanguageModel.streamText({
  prompt: "Write a story about a space explorer"
}).pipe(Stream.runForEach((part) => {
  if (part.type === "text-delta") {
    return Console.log(part.delta)
  }
  return Effect.void
}))
```

**Signature**

```ts
declare const streamText: <Options extends NoExcessProperties<GenerateTextOptions<any>, Options>, Tools extends Record<string, Tool.Any> = {}>(options: Options & GenerateTextOptions<Tools>) => Stream.Stream<Response.StreamPart<Tools>, ExtractError<Options>, LanguageModel | ExtractContext<Options>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/LanguageModel.ts#L968)

Since v1.0.0