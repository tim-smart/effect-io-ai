Package: `effect`<br />
Module: `Types`<br />

## Types.Simplify

Flattens an intersection type into a single object type for readability.

- Use to clean up IDE tooltips that show `A & B & C` instead of a merged
  object.
- Does not change the type semantically, only its display.

**Example** (Simplifying an intersection)

```ts
import type { Types } from "effect"

// Without Simplify: IDE shows { a: number } & { b: string }
// With Simplify: IDE shows { a: number; b: string }
type Clean = Types.Simplify<{ a: number } & { b: string }>
```

**See**

- `MergeLeft`
- `MergeRight`

**Signature**

```ts
type Simplify<A> = {
  [K in keyof A]: A[K]
} extends infer B ? B : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L263)

Since v2.0.0