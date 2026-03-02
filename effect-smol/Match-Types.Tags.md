Package: `effect`<br />
Module: `Match`<br />

## Match.Types.Tags

Extracts tag values from a discriminated union based on a discriminant field.

This utility type extracts the possible values of a discriminant field
from a union type. It's used internally to implement tag-based pattern
matching for discriminated unions.

**Example**

```ts
import type { Match } from "effect"

type Events =
  | { _tag: "click"; x: number; y: number }
  | { _tag: "keypress"; key: string }
  | { _tag: "scroll"; delta: number }

type EventTags = Match.Types.Tags<"_tag", Events>
// Result: "click" | "keypress" | "scroll"

type CustomTags = Match.Types.Tags<
  "type",
  | { type: "user"; name: string }
  | { type: "admin"; permissions: Array<string> }
>
// Result: "user" | "admin"
```

**Signature**

```ts
type Tags<D, P> = P extends Record<D, infer X> ? X : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L2281)

Since v4.0.0