## Equals

Determines if two types are equal.

**Example**

```ts
import type { Types } from "effect"

type Res1 = Types.Equals<{ a: number }, { a: number }> // true
type Res2 = Types.Equals<{ a: number }, { b: number }> // false
```

**Signature**

```ts
type Equals<X, Y> = (<T>() => T extends X ? 1 : 2) extends <
  T
>() => T extends Y ? 1 : 2 ? true
  : false
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Types.ts#L142)

Since v2.0.0