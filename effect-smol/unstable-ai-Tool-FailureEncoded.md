Package: `effect`<br />
Module: `Tool`<br />

## Tool.FailureEncoded

A utility type to extract the encoded type of the tool call result when
it fails.

**Signature**

```ts
type FailureEncoded<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? _Config["failure"]["Encoded"]
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L849)

Since v4.0.0