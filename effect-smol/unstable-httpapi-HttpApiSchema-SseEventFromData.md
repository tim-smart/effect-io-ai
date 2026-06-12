Package: `effect`<br />
Module: `HttpApiSchema`<br />

## HttpApiSchema.SseEventFromData

Event schema produced when `StreamSse` is constructed from a JSON data schema.

**Signature**

```ts
export interface SseEventFromData<Data extends Schema.Top> extends
  Schema.Codec<
    {
      readonly id: string | undefined
      readonly event: string
      readonly data: Data["Type"]
    },
    {
      readonly id?: string | undefined
      readonly event?: string | undefined
      readonly data: string
    },
    Data["DecodingServices"],
    Data["EncodingServices"]
  >
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSchema.ts#L317)

Since v4.0.0