Package: `effect`<br />
Module: `Struct`<br />

## Struct.Mutable

Removes `readonly` modifiers from all properties of an object type.

**When to use**

Use when you need a mutable version of a readonly interface.

**Details**

This helper is purely cosmetic at the type level and has no runtime effect.
It also flattens intersections like `Simplify`.

**Example** (Making a readonly type mutable)

```ts
import type { Struct } from "effect"

type ReadOnly = { readonly a: string; readonly b: number }
type Writable = Struct.Mutable<ReadOnly>
// { a: string; b: number }
```

**See**

- `Simplify` – flattens intersections without removing `readonly`

**Signature**

```ts
type { -readonly [K in keyof T]: T[K]; } = { -readonly [K in keyof T]: T[K] } & {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Struct.ts#L140)

Since v4.0.0