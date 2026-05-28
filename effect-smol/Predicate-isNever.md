Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isNever

Type guard that always returns `false`.

**When to use**

Use when you need a predicate that never accepts, e.g. in default branches.

**Details**

- Always returns `false`.

**Example** (Never matches)

```ts
import { Predicate } from "effect"

console.log(Predicate.isNever("anything"))
```

**See**

- `isUnknown`

**Signature**

```ts
declare const isNever: (_: unknown) => _ is never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L999)

Since v2.0.0