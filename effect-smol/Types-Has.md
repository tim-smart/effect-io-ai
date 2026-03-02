Package: `effect`<br />
Module: `Types`<br />

## Types.Has

Checks if an object type contains any of the specified keys.

- Use to conditionally branch based on the presence of keys in a type.
- Returns `true` if at least one key from `Key` exists in `A`, `false`
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L338)

Since v2.0.0