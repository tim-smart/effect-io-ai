Package: `effect`<br />
Module: `Match`<br />

## Match.tag

Matches discriminated union members by their `_tag` field.

**When to use**

Use to handle one or more `_tag` cases with the same matcher branch.

**Details**

This helper follows the Effect convention that discriminated unions use
`"_tag"` as their discriminator field. Use `discriminator` for a
different discriminator field.

**Example** (Matching a discriminated union by tag)

```ts
import { Match } from "effect"

type Event =
  | { readonly _tag: "fetch" }
  | { readonly _tag: "success"; readonly data: string }
  | { readonly _tag: "error"; readonly error: Error }
  | { readonly _tag: "cancel" }

const match = Match.type<Event>().pipe(
  // Match either "fetch" or "success"
  Match.tag("fetch", "success", () => `Ok!`),
  // Match "error" and extract the error message
  Match.tag("error", (event) => `Error: ${event.error.message}`),
  // Match "cancel"
  Match.tag("cancel", () => "Cancelled"),
  Match.exhaustive
)

console.log(match({ _tag: "success", data: "Hello" }))
// Output: "Ok!"

console.log(match({ _tag: "error", error: new Error("Oops!") }))
// Output: "Error: Oops!"
```

**Signature**

```ts
declare const tag: <R, P extends Types.Tags<"_tag", R> & string, Ret, Fn extends (_: Extract<R, Record<"_tag", P>>) => Ret>(...pattern: [first: P, ...values: Array<P>, f: Fn]) => <I, F, A, Pr>(self: Matcher<I, F, R, A, Pr, Ret>) => Matcher<I, Types.AddWithout<F, Extract<R, Record<"_tag", P>>>, Types.ApplyFilters<I, Types.AddWithout<F, Extract<R, Record<"_tag", P>>>>, ReturnType<Fn> | A, Pr, Ret>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Match.ts#L939)

Since v4.0.0