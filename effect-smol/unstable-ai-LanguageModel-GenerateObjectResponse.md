Package: `effect`<br />
Module: `LanguageModel`<br />

## LanguageModel.GenerateObjectResponse

Response class for structured object generation operations.

**Example**

```ts
import { Effect, Schema } from "effect"
import { LanguageModel } from "effect/unstable/ai"

const UserSchema = Schema.Struct({
  name: Schema.String,
  email: Schema.String
})

const program = Effect.gen(function*() {
  const response = yield* LanguageModel.generateObject({
    prompt: "Create user: John Doe, john@example.com",
    schema: UserSchema
  })

  console.log(response.value) // { name: "John Doe", email: "john@example.com" }
  console.log(response.text) // Raw generated text

  return response.value
})
```

**Signature**

```ts
declare class GenerateObjectResponse<Tools, A> { constructor(value: A, content: Array<Response.Part<Tools>>) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L444)

Since v4.0.0