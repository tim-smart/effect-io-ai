Package: `effect`<br />
Module: `Types`<br />

## Types.Has

Determines if a record contains any of the given keys.

**Example**

```ts
import type { Types } from "effect"

type Res1 = Types.Has<{ a: number }, "a" | "b"> // true
type Res2 = Types.Has<{ c: number }, "a" | "b"> // false
```

**Signature**

```ts
type Has<A, Key> = (Key extends infer K ? K extends keyof A ? true : never : never) extends never
  ? false
  : true
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Types.ts#L169)

Since v2.0.0