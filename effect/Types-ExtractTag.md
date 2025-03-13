Package: `effect`<br />
Module: `Types`<br />

## Types.ExtractTag

Extracts the type of the given tag.

**Example**

```ts
import type { Types } from "effect"

type Res = Types.ExtractTag<{ _tag: "a", a: number } | { _tag: "b", b: number }, "b"> // { _tag: "b", b: number }
```

**Signature**

```ts
type ExtractTag<E, K> = Extract<E, { _tag: K }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Types.ts#L100)

Since v2.0.0