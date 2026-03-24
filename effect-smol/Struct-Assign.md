Package: `effect`<br />
Module: `Struct`<br />

## Struct.Assign

Merges two object types with properties from `U` taking precedence over `T`
on overlapping keys (like `Object.assign` at the type level).

- Use when you need the type-level equivalent of `{ ...T, ...U }`.
- When no keys overlap, returns a simple intersection for efficiency.
- When keys overlap, the type from `U` wins.

**Example** (Merging two types with overlapping keys)

```ts
import type { Struct } from "effect"

type A = { a: string; b: number }
type B = { b: boolean; c: string }
type Merged = Struct.Assign<A, B>
// { a: string; b: boolean; c: string }
```

**See**

- `assign` – the runtime equivalent
- `Simplify` – flatten the resulting intersection

**Signature**

```ts
type { [K in keyof (keyof T & keyof U extends never ? T & U : Omit<T, keyof T & keyof U> & U)]: (keyof T & keyof U extends never ? T & U : Omit<T, keyof T & keyof U> & U)[K]; } = Simplify<keyof T & keyof U extends never ? T & U : Omit<T, keyof T & keyof U> & U>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Struct.ts#L160)

Since v4.0.0