# tagsExhaustive

Matches values based on their `_tag` field and requires handling of all
possible cases.

**Details**

This function is designed for **discriminated unions** where every possible
`_tag` value must have a corresponding handler. Unlike {@link tags}, this
function ensures **exhaustiveness**, meaning all cases must be explicitly
handled. If a `_tag` value is missing from the mapping, TypeScript will
report an error.

To import and use `tagsExhaustive` from the "Match" module:

```ts
import * as Match from "effect/Match"
// Can be accessed like this
Match.tagsExhaustive
```

**Example**

```ts
import { Match, pipe } from "effect"

const match = pipe(
  Match.type<{ _tag: "A"; a: string } | { _tag: "B"; b: number } | { _tag: "C"; c: boolean }>(),
  Match.tagsExhaustive({
    A: (a) => a.a,
    B: (b) => b.b,
    C: (c) => c.c
  })
)
```

**Signature**

```ts
export declare const tagsExhaustive: <
  R,
  Ret,
  P extends { readonly [Tag in Types.Tags<"_tag", R> & string]: (_: Extract<R, Record<"_tag", Tag>>) => Ret } & {
    readonly [Tag in Exclude<keyof P, Types.Tags<"_tag", R>>]: never
  }
>(
  fields: P
) => <I, F, A, Pr>(
  self: Matcher<I, F, R, A, Pr, Ret>
) => [Pr] extends [never] ? (u: I) => Unify<A | ReturnType<P[keyof P]>> : Unify<A | ReturnType<P[keyof P]>>
```
