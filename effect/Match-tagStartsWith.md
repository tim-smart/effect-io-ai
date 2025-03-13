Package: `effect`<br />
Module: `Match`<br />

## Match.tagStartsWith

Matches values where the `_tag` field starts with a given prefix.

**Details**

This function allows you to match on values in a **discriminated union**
based on whether the `_tag` field starts with a specified prefix. It is
useful for handling hierarchical or namespaced tags, where multiple related
cases share a common prefix.

**Example**

```ts
import { Match, pipe } from "effect"

const match = pipe(
  Match.type<{ _tag: "A" } | { _tag: "B" } | { _tag: "A.A" } | {}>(),
  Match.tagStartsWith("A", (_) => 1 as const),
  Match.tagStartsWith("B", (_) => 2 as const),
  Match.orElse((_) => 3 as const)
)

console.log(match({ _tag: "A" })) // 1
console.log(match({ _tag: "B" })) // 2
console.log(match({ _tag: "A.A" })) // 1
```

**Signature**

```ts
declare const tagStartsWith: <R, P extends string, Ret, Fn extends (_: Extract<R, Record<"_tag", `${P}${string}`>>) => Ret>(pattern: P, f: Fn) => <I, F, A, Pr>(self: Matcher<I, F, R, A, Pr, Ret>) => Matcher<I, Types.AddWithout<F, Extract<R, Record<"_tag", `${P}${string}`>>>, Types.ApplyFilters<I, Types.AddWithout<F, Extract<R, Record<"_tag", `${P}${string}`>>>>, ReturnType<Fn> | A, Pr, Ret>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Match.ts#L766)

Since v1.0.0