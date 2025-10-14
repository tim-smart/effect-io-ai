Package: `@effect/ai`<br />
Module: `LanguageModel`<br />

## LanguageModel.generateObject

Generate a structured object from a schema using a language model.

**Example**

```ts
import { LanguageModel } from "@effect/ai"
import { Effect, Schema } from "effect"

const EventSchema = Schema.Struct({
  title: Schema.String,
  date: Schema.String,
  location: Schema.String
})

const program = Effect.gen(function* () {
  const response = yield* LanguageModel.generateObject({
    prompt: "Extract event info: Tech Conference on March 15th in San Francisco",
    schema: EventSchema,
    objectName: "event"
  })

  console.log(response.value)
  // { title: "Tech Conference", date: "March 15th", location: "San Francisco" }

  return response.value
})
```

**Signature**

```ts
declare const generateObject: <A, I extends Record<string, unknown>, R, Options extends NoExcessProperties<GenerateObjectOptions<any, A, I, R>, Options>, Tools extends Record<string, Tool.Any> = {}>(options: Options & GenerateObjectOptions<Tools, A, I, R>) => Effect.Effect<GenerateObjectResponse<Tools, A>, ExtractError<Options>, LanguageModel | R | ExtractContext<Options>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/LanguageModel.ts#L943)

Since v1.0.0