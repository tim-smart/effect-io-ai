Package: `effect`<br />
Module: `Tool`<br />

## Tool.Success

A utility type to extract the type of the tool call result when it succeeds.

**Signature**

```ts
type Success<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? _Config["success"]["Type"]
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Tool.ts#L750)

Since v4.0.0