Package: `effect`<br />
Module: `Types`<br />

## Types.NotFunction

Excludes function types from a union, keeping only non-function members.

- Use to filter out callable types from a union.
- Returns `never` if the entire union consists of function types.

**Example** (Filtering out functions)

```ts
import type { Types } from "effect"

type Result = Types.NotFunction<string | (() => void) | number>
// string | number
```

**Signature**

```ts
type NotFunction<T> = T extends Function ? never : T
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L737)

Since v2.0.0