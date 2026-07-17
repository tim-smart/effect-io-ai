Package: `effect`<br />
Module: `OpenApi`<br />

## OpenApi.OpenApiSpecEffectStream

Effect-specific metadata for generated streaming response media types.

**Signature**

```ts
type OpenApiSpecEffectStream = | {
    encoding: "sse"
    causeSchema: JsonSchema.JsonSchema
    errorSchema: JsonSchema.JsonSchema
    failureEvent: "effect/httpapi/stream/failure"
  }
  | {
    encoding: "uint8array"
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/OpenApi.ts#L1040)

Since v4.0.0