Package: `effect`<br />
Module: `Record`<br />

## Record.ReadonlyRecord.IntersectKeys

Represents the intersection of two key types, handling both literal and non-literal string keys.
This type is used in record operations that need to compute overlapping keys.

**Example**

```ts
import type { Record } from "effect"

// Intersection of literal keys
type Example1 = Record.ReadonlyRecord.IntersectKeys<"a" | "b", "b" | "c"> // "b"

// Intersection with generic string
type Example2 = Record.ReadonlyRecord.IntersectKeys<string, "a" | "b"> // string
```

**Signature**

```ts
type IntersectKeys<K1, K2> = [string] extends [K1 | K2] ?
    NonLiteralKey<K1> & NonLiteralKey<K2>
    : K1 & K2
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L105)

Since v2.0.0