Package: `@effect/ai`<br />
Module: `AiInput`<br />

## AiInput.Raw

Represents raw input types that can be converted into an `AiInput`.

**Signature**

```ts
type Raw = | string
  | Message
  | Iterable<Message>
  | AiInput
  | AiResponse.AiResponse
  | AiResponse.WithStructuredOutput<any>
  | AiResponse.WithToolCallResults<any>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiInput.ts#L51)

Since v1.0.0