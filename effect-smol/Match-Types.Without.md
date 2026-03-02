Package: `effect`<br />
Module: `Match`<br />

## Match.Types.Without

Represents a filter that excludes specific types from a union.

`Without` is used internally to track which types should be excluded
from consideration during pattern matching. It helps implement the
type-level logic for `Match.not` and other exclusion operations.

**Example**

```ts
import { Match } from "effect"

// Without is used internally when you write:
Match.type<string | number | boolean>().pipe(
  Match.not(Match.string, (value) => `not string: ${value}`),
  // At this point, type system uses Without<string> to track exclusion
  Match.orElse(() => "was a string")
)
```

**Signature**

```ts
export interface Without<out X> {
    readonly _tag: "Without"
    readonly _X: X
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L2132)

Since v4.0.0