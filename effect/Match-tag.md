# tag

The `Match.tag` function allows pattern matching based on the `_tag` field in
a [Discriminated Union](https://www.typescriptlang.org/docs/handbook/typescript-in-5-minutes-func.html#discriminated-unions).
You can specify multiple tags to match within a single pattern.

**Note**

The `Match.tag` function relies on the convention within the Effect ecosystem
of naming the tag field as `"_tag"`. Ensure that your discriminated unions
follow this naming convention for proper functionality.

To import and use `tag` from the "Match" module:

```ts
import * as Match from "effect/Match"
// Can be accessed like this
Match.tag
```

**Example**

```ts
// Title: Matching a Discriminated Union by Tag
import { Match } from "effect"

type Event =
  | { readonly _tag: "fetch" }
  | { readonly _tag: "success"; readonly data: string }
  | { readonly _tag: "error"; readonly error: Error }
  | { readonly _tag: "cancel" }

// Create a Matcher for Either<number, string>
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
export declare const tag: <
  R,
  P extends Types.Tags<"_tag", R> & string,
  Ret,
  Fn extends (_: Extract<R, Record<"_tag", P>>) => Ret
>(
  ...pattern: [first: P, ...values: Array<P>, f: Fn]
) => <I, F, A, Pr>(
  self: Matcher<I, F, R, A, Pr, Ret>
) => Matcher<
  I,
  Types.AddWithout<F, Extract<R, Record<"_tag", P>>>,
  Types.ApplyFilters<I, Types.AddWithout<F, Extract<R, Record<"_tag", P>>>>,
  ReturnType<Fn> | A,
  Pr,
  Ret
>
```
