Package: `effect`<br />
Module: `Types`<br />

## Types.RequiredKeys

Extracts the required keys from a type.

**When to use**

Use to derive the keys whose properties must be present on an object type.

**Signature**

```ts
type RequiredKeys<T> = { [K in keyof T]-?: {} extends Pick<T, K> ? never : K }[keyof T]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Types.ts#L1121)

Since v4.0.0