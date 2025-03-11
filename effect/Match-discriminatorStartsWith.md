## discriminatorStartsWith

Matches values where a specified field starts with a given prefix.

**Details**

This function is useful for working with discriminated unions where the
discriminant field follows a hierarchical or namespaced structure. It allows
you to match values based on whether the specified field starts with a given
prefix, making it easier to handle grouped cases.

Instead of checking for exact matches, this function lets you match values
that share a common prefix. For example, if your discriminant field contains
hierarchical names like `"A"`, `"A.A"`, and `"B"`, you can match all values
starting with `"A"` using a single rule.

**Example**

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

**Signature**

```ts
declare const discriminatorStartsWith: <D extends string>(field: D) => <R, P extends string, Ret, Fn extends (_: Extract<R, Record<D, `${P}${string}`>>) => Ret>(pattern: P, f: Fn) => <I, F, A, Pr>(self: Matcher<I, F, R, A, Pr, Ret>) => Matcher<I, Types.AddWithout<F, Extract<R, Record<D, `${P}${string}`>>>, Types.ApplyFilters<I, Types.AddWithout<F, Extract<R, Record<D, `${P}${string}`>>>>, A | ReturnType<Fn>, Pr, Ret>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Match.ts#L561)

Since v1.0.0