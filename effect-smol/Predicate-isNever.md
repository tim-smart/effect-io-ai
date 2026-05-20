Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isNever

A guard that always returns `false`.

**When to use**

- You need a predicate that never accepts, e.g. in default branches.

**Details**

- Pure; does not mutate input.
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L996)

Since v2.0.0