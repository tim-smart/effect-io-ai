Package: `effect`<br />
Module: `Struct`<br />

## Struct.Simplify

Flattens intersection types into a single object type for readability.

**When to use**

Use when hovering over a type shows `A & B & C` instead of the merged shape.

**Details**

This helper is purely cosmetic at the type level and has no runtime effect.
It preserves `readonly` modifiers; use `Mutable` to strip them.

**Example** (Flattening an intersection)

```ts
import type { Struct } from "effect"

type Original = { a: string } & { b: number }

// Without Simplify, the type displays as `{ a: string } & { b: number }`
type Simplified = Struct.Simplify<Original>
// { a: string; b: number }
```

**See**

- `Mutable` – also flattens but removes `readonly`
- `Assign` – merges two types with right-side precedence

**Signature**

```ts
type { [K in keyof T]: T[K]; } = { [K in keyof T]: T[K] } & {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Struct.ts#L112)

Since v4.0.0