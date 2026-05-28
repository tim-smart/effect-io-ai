Package: `effect`<br />
Module: `Match`<br />

## Match.discriminatorStartsWith

Matches values where a specified field starts with a given prefix.

**When to use**

Use to match string discriminator values by prefix instead of exact value.

**Details**

Instead of checking for exact matches, this helper matches values that share
a common prefix. For example, if the discriminant field contains hierarchical
names like `"A"`, `"A.A"`, and `"B"`, a single `"A"` rule can match both
`"A"` and `"A.A"`.

**Example** (Matching discriminator prefixes)

```ts
import { Match, pipe } from "effect"

const match = pipe(
  Match.type<{ type: "A" } | { type: "B" } | { type: "A.A" } | {}>(),
  Match.discriminatorStartsWith("type")("A", (_) => 1 as const),
  Match.discriminatorStartsWith("type")("B", (_) => 2 as const),
  Match.orElse((_) => 3 as const)
)

console.log(match({ type: "A" })) // 1
console.log(match({ type: "B" })) // 2
console.log(match({ type: "A.A" })) // 1
```

**See**

- `discriminator` for matching exact discriminator values

**Signature**

```ts
declare const discriminatorStartsWith: <D extends string>(field: D) => <R, P extends string, Ret, Fn extends (_: Extract<R, Record<D, `${P}${string}`>>) => Ret>(pattern: P, f: Fn) => <I, F, A, Pr>(self: Matcher<I, F, R, A, Pr, Ret>) => Matcher<I, Types.AddWithout<F, Extract<R, Record<D, `${P}${string}`>>>, Types.ApplyFilters<I, Types.AddWithout<F, Extract<R, Record<D, `${P}${string}`>>>>, A | ReturnType<Fn>, Pr, Ret>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L791)

Since v4.0.0