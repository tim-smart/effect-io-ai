Package: `effect`<br />
Module: `Tool`<br />

## Tool.Failure

A utility type to extract the type of the tool call result when it fails.

**Signature**

```ts
type Failure<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? _Config["failure"]["Type"]
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L755)

Since v1.0.0