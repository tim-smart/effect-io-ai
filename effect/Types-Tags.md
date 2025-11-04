Package: `effect`<br />
Module: `Types`<br />

## Types.Tags

Returns the tags in a type.

**Example**

```ts
import type { Types } from "effect"

type Res = Types.Tags<string | { _tag: "a" } | { _tag: "b" } > // "a" | "b"
```

**Signature**

```ts
type Tags<E> = E extends { _tag: string } ? E["_tag"] : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Types.ts#L73)

Since v2.0.0