Package: `effect`<br />
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L661)

Since v1.0.0