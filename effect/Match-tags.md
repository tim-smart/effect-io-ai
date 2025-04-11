Package: `effect`<br />
Module: `Match`<br />

## Match.tags

Matches values based on their `_tag` field, mapping each tag to a
corresponding handler.

**Details**

This function provides a way to handle discriminated unions by mapping `_tag`
values to specific functions. Each handler receives the matched value and
returns a transformed result. If all possible tags are handled, you can
enforce exhaustiveness using `Match.exhaustive` to ensure no case is missed.

**Example**

```ts
import { Match, pipe } from "effect"

const match = pipe(
  Match.type<{ _tag: "A"; a: string } | { _tag: "B"; b: number } | { _tag: "C"; c: boolean }>(),
  Match.tags({
    A: (a) => a.a,
    B: (b) => b.b,
    C: (c) => c.c
  }),
  Match.exhaustive
)
```

**Signature**

```ts
declare const tags: <R, Ret, P extends { readonly [Tag in Types.Tags<"_tag", R> & string]?: ((_: Extract<R, Record<"_tag", Tag>>) => Ret) | undefined; } & { readonly [Tag in Exclude<keyof P, Types.Tags<"_tag", R>>]: never; }>(fields: P) => <I, F, A, Pr>(self: Matcher<I, F, R, A, Pr, Ret>) => Matcher<I, Types.AddWithout<F, Extract<R, Record<"_tag", keyof P>>>, Types.ApplyFilters<I, Types.AddWithout<F, Extract<R, Record<"_tag", keyof P>>>>, A | ReturnType<P[keyof P] & {}>, Pr, Ret>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Match.ts#L818)

Since v1.0.0