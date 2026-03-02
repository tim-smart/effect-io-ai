Package: `effect`<br />
Module: `Types`<br />

## Types.UnionToIntersection

Transforms a union type into an intersection type.

- Use to combine all members of a union into a single type with all
  their properties.
- Useful in advanced generic code where you need to merge union variants.

Behavior:
- Uses distributive conditional types and contra-variant inference.
- If the union members are incompatible (e.g. `string | number`), the
  result is `never`.

**Example** (Union to intersection)

```ts
import type { Types } from "effect"

type Union = { a: string } | { b: number }
type Result = Types.UnionToIntersection<Union>
// { a: string } & { b: number }
```

**See**

- `IsUnion`

**Signature**

```ts
type UnionToIntersection<T> = (T extends any ? (x: T) => any : never) extends (x: infer R) => any ? R
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L237)

Since v2.0.0