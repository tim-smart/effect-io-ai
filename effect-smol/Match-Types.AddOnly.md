Package: `effect`<br />
Module: `Match`<br />

## Match.Types.AddOnly

Adds a type to the inclusion filter, refining what should be included.

This utility type manages the refinement of included types during
pattern matching. It ensures that only the most specific type
constraints are maintained when multiple positive matches are applied.

**Example**

```ts
import { Match } from "effect"

// AddOnly is used when refining positive matches:
Match.type<{ type: "user" | "admin"; name: string }>().pipe(
  Match.when({ type: "admin" }, (admin) => admin.name),
  // Type system uses AddOnly to refine the constraint
  Match.orElse(() => "not admin")
)
```

**Signature**

```ts
type AddOnly<A, X> = [A] extends [Without<infer WX>] ? [X] extends [WX] ? never
    : Only<X>
    : [A] extends [Only<infer OX>] ? [X] extends [OX] ? Only<X>
      : never
    : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L2213)

Since v4.0.0