Package: `effect`<br />
Module: `Types`<br />

## Types.MatchRecord

Conditional type that checks if `S` is an empty object type.

- Returns `onTrue` if `S` matches `{}` (i.e., has no required properties).
- Returns `onFalse` otherwise.
- Useful for branching type-level logic based on whether a service/context
  type has requirements.

**Example** (Branching on empty record)

```ts
import type { Types } from "effect"

type A = Types.MatchRecord<{}, "empty", "not empty"> // "empty"
type B = Types.MatchRecord<{ a: number }, "empty", "not empty"> // "not empty"
```

**Signature**

```ts
type MatchRecord<S, onTrue, onFalse> = {} extends S ? onTrue : onFalse
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L730)

Since v2.0.0