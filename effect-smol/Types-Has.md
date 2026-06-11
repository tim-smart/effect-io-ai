Package: `effect`<br />
Module: `Types`<br />

## Types.Has

Checks whether an object type contains any of the specified keys.

**When to use**

Use to branch type-level logic when at least one key from a candidate key set
exists on an object type.

**Details**

Returns `true` if at least one key from `Key` exists in `A`, `false`
otherwise.

**Example** (Key presence check)

```ts
import type { Types } from "effect"

type Yes = Types.Has<{ a: number; b: string }, "a" | "c"> // true
type No = Types.Has<{ a: number }, "b" | "c"> // false
```

**Signature**

```ts
type Has<A, Key> = (Key extends infer K ? K extends keyof A ? true : never : never) extends never
  ? false
  : true
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L339)

Since v2.0.0