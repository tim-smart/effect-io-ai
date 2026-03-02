Package: `effect`<br />
Module: `LanguageModel`<br />

## LanguageModel.streamText

Generate text using a language model with streaming output.

Returns a stream of response parts that are emitted as soon as they are
available from the model, enabling real-time text generation experiences.

**Example**

```ts
import { Console, Effect, Stream } from "effect"
import { LanguageModel } from "effect/unstable/ai"

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
declare const streamText: <Options extends NoExcessProperties<GenerateTextOptions<any>, Options>, Tools extends Record<string, Tool.Any> = {}>(options: Options & GenerateTextOptions<Tools>) => Stream.Stream<Response.StreamPart<Tools>, ExtractError<Options>, ExtractServices<Options> | LanguageModel>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L1451)

Since v4.0.0