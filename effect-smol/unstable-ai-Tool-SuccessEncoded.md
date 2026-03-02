Package: `effect`<br />
Module: `Tool`<br />

## Tool.SuccessEncoded

A utility type to extract the encoded type of the tool call result when
it succeeds.

**Signature**

```ts
type SuccessEncoded<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? _Config["success"]["Encoded"]
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L728)

Since v1.0.0