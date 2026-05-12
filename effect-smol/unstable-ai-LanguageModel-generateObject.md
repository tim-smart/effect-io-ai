Package: `effect`<br />
Module: `LanguageModel`<br />

## LanguageModel.generateObject

Generate a structured object from a schema using a language model.

**Example**

```ts
import { Effect, Schema } from "effect"
import { LanguageModel } from "effect/unstable/ai"

const EventSchema = Schema.Struct({
  title: Schema.String,
  date: Schema.String,
  location: Schema.String
})

const program = Effect.gen(function*() {
  const response = yield* LanguageModel.generateObject({
    prompt:
      "Extract event info: Tech Conference on March 15th in San Francisco",
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
declare const generateObject: <ObjectEncoded extends Record<string, any>, StructuredOutputSchema extends Schema.Encoder<ObjectEncoded, unknown>, Options extends NoExcessProperties<GenerateObjectOptions<any, StructuredOutputSchema>, Options>>(options: Options & GenerateObjectOptions<ExtractTools<Options>, StructuredOutputSchema>) => Effect.Effect<GenerateObjectResponse<ExtractTools<Options>, StructuredOutputSchema["Type"]>, ExtractError<Options>, ExtractServices<Options> | StructuredOutputSchema["DecodingServices"] | LanguageModel>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L1695)

Since v4.0.0