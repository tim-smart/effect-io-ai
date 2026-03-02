Package: `effect`<br />
Module: `Match`<br />

## Match.Types.ArrayToIntersection

Converts an array type to an intersection of its element types.

This utility type takes an array of types and converts them into a single
intersection type. It's used internally when multiple patterns need to
be satisfied simultaneously (like in `Match.whenAnd`).

**Example**

```ts
import type { Match } from "effect"

type Combined = Match.Types.ArrayToIntersection<[
  { name: string },
  { age: number },
  { active: boolean }
]>
// Result: { name: string } & { age: number } & { active: boolean }
//         = { name: string; age: number; active: boolean }

// This type utility enables complex type intersections
// Complex type operations are handled by this utility type
// for advanced pattern matching scenarios
```

**Signature**

```ts
type ArrayToIntersection<A> = T.UnionToIntersection<
    A[number]
  >
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L2310)

Since v4.0.0