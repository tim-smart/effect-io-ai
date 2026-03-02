Package: `effect`<br />
Module: `Match`<br />

## Match.Types.Only

Represents a filter that includes only specific types from a union.

`Only` is used internally to track which types should be exclusively
considered during pattern matching. It helps implement the type-level
logic for positive matches and type narrowing.

**Example**

```ts
import { Match } from "effect"

// Only is used internally when you write:
Match.type<string | number | boolean>().pipe(
  Match.when(Match.string, (s) => `string: ${s}`),
  // At this point, type system uses Only<string> for the match
  Match.orElse((value) => `not string: ${value}`)
)
```

**Signature**

```ts
export interface Only<out X> {
    readonly _tag: "Only"
    readonly _X: X
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L2159)

Since v4.0.0