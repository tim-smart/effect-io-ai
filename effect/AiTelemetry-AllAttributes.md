Package: `@effect/ai`<br />
Module: `AiTelemetry`<br />

## AiTelemetry.AllAttributes

All telemetry attributes which are part of the GenAI specification.

**Signature**

```ts
type AllAttributes = & BaseAttributes
  & OperationAttributes
  & TokenAttributes
  & UsageAttributes
  & RequestAttributes
  & ResponseAttributes
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiTelemetry.ts#L37)

Since v1.0.0