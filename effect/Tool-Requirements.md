Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.Requirements

A utility type to extract the requirements of an `Tool`.

**Signature**

```ts
type Requirements<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? _Config["parameters"]["Context"] | _Config["success"]["Context"] | _Config["failure"]["Context"] | _Requirements :
  never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L643)

Since v1.0.0