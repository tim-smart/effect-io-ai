Package: `effect`<br />
Module: `Types`<br />

## Types.RequiredKeys

Extracts the required keys from a type.

**Signature**

```ts
type RequiredKeys<T> = { [K in keyof T]-?: {} extends Pick<T, K> ? never : K }[keyof T]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L1135)

Since v4.0.0