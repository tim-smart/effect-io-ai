Package: `@effect/ai-openai`<br />
Module: `OpenAiSchema`<br />

## OpenAiSchema.UnknownResponseStreamEvent

Fallback event shape for future or provider-specific response stream events.

**Signature**

```ts
type UnknownResponseStreamEvent = {
  readonly type: string
  readonly [key: string]: unknown
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiSchema.ts#L1066)

Since v4.0.0