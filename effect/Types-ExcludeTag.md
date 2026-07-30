Package: `effect`<br />
Module: `Types`<br />

## Types.ExcludeTag

Excludes the tagged object from the type.

**Example**

```ts
import type { Types } from "effect"

type Res = Types.ExcludeTag<string | { _tag: "a" } | { _tag: "b" }, "a"> // string | { _tag: "b" }
```

**Signature**

```ts
type ExcludeTag<E, K> = Exclude<E, { _tag: K }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Types.ts#L87)

Since v2.0.0