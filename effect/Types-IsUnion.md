Package: `effect`<br />
Module: `Types`<br />

## Types.IsUnion

Checks whether a type `T` is a union type.

**When to use**

Use to branch type-level logic depending on whether a type is a union.

**Details**

- Compares `[T]` against `[UnionToIntersection<T>]`. If they differ, `T`
  must be a union.
- Returns `true` if `T` is a union of two or more members.
- Returns `false` for single types, `never`, or `any`.

**Example** (Detecting union types)

```ts
import type { Types } from "effect"

type Yes = Types.IsUnion<"a" | "b"> // true
type No = Types.IsUnion<string> // false
```

**See**

- `UnionToIntersection`

**Signature**

```ts
type IsUnion<T> = [T] extends [UnionToIntersection<T>] ? false : true
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Types.ts#L888)

Since v4.0.0