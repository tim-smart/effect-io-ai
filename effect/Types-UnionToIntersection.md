Package: `effect`<br />
Module: `Types`<br />

## Types.UnionToIntersection

A utility type that transforms a union type `T` into an intersection type.

**Signature**

```ts
type UnionToIntersection<T> = (T extends any ? (x: T) => any : never) extends (x: infer R) => any ? R
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Types.ts#L110)

Since v2.0.0