Package: `@effect/ai`<br />
Module: `AiLanguageModel`<br />

## AiLanguageModel.generateObject

Generate a structured object for the specified prompt and schema using a
large language model.

When using a `Schema` that does not have an `identifier` or `_tag`
property, you must specify a `toolCallId` to properly associate the
output of the model.

**Signature**

```ts
declare const generateObject: <A, I extends Record<string, unknown>, R>(options: GenerateObjectOptions<A, I, R>) => Effect.Effect<AiResponse.WithStructuredOutput<A>, AiError, AiLanguageModel | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiLanguageModel.ts#L658)

Since v1.0.0