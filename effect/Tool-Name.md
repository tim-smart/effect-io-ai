Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.Name

A utility type to extract the `Name` type from an `Tool`.

**Signature**

```ts
type Name<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? _Name
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L582)

Since v1.0.0