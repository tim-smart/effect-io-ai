Package: `effect`<br />
Module: `Match`<br />

## Match.Types.AddWithout

Adds a type to the exclusion filter, expanding what should be filtered out.

This utility type manages the accumulation of excluded types during
pattern matching. When multiple exclusions are applied, it combines
them into a single filter representation.

**Example**

```ts
import { Match } from "effect"

// AddWithout is used when combining multiple exclusions:
Match.type<string | number | boolean | null>().pipe(
  Match.not(Match.string, () => "not string"),
  Match.not(Match.number, () => "not number"),
  // Type system uses AddWithout to combine exclusions
  Match.orElse(() => "was string or number")
)
```

**Signature**

```ts
type AddWithout<A, X> = [A] extends [Without<infer WX>] ? Without<X | WX>
    : [A] extends [Only<infer OX>] ? Only<Exclude<OX, X>>
    : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L2187)

Since v4.0.0