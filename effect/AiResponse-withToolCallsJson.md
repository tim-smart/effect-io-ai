Package: `@effect/ai`<br />
Module: `AiResponse`<br />

## AiResponse.withToolCallsJson

Adds the specified tool calls to the provided `AiResponse`.

**NOTE**: With this method, the tool call parameters will be parsed as a
JSON string. If your tool call parameters are already parsed, use
`AiResponse.withToolCallsUnknown`.

**Signature**

```ts
declare const withToolCallsJson: { (toolCalls: Iterable<{ readonly id: string; readonly name: string; readonly params: string; }>): (self: AiResponse) => Effect.Effect<AiResponse, AiError>; (self: AiResponse, toolCalls: Iterable<{ readonly id: string; readonly name: string; readonly params: string; }>): Effect.Effect<AiResponse, AiError>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiResponse.ts#L883)

Since v1.0.0