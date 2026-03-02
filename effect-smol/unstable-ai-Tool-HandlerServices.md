Package: `effect`<br />
Module: `Tool`<br />

## Tool.HandlerServices

A utility type to extract the requirements of a `Tool` call handler.

**Signature**

```ts
type HandlerServices<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? // Parameters must be decoded when received from a model
    | _Config["parameters"]["DecodingServices"]
    // A tool call `result`, whether success or failure, is encoded and returned
    // as the `encodedResult` along with the `result`
    | ResultEncodingServices<T>
    // Per-request requirements
    | _Requirements
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L846)

Since v1.0.0