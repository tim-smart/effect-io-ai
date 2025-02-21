# discriminatorsExhaustive

Matches values based on a discriminator field and **ensures all cases are
handled**.

\*_Details_+

This function is similar to {@link discriminators}, but **requires that all
possible cases** are explicitly handled. It is useful when working with
discriminated unions, where a specific field (e.g., `"type"`) determines the
shape of an object. Each possible value of the field must have a
corresponding handler, ensuring **exhaustiveness checking** at compile time.

This function **does not require** `Match.exhaustive` at the end of the
pipeline because it enforces exhaustiveness by design.

To import and use `discriminatorsExhaustive` from the "Match" module:

```ts
import * as Match from "effect/Match"
// Can be accessed like this
Match.discriminatorsExhaustive
```

**Example**

```ts
import { Match, pipe } from "effect"

const match = pipe(
  Match.type<{ type: "A"; a: string } | { type: "B"; b: number } | { type: "C"; c: boolean }>(),
  Match.discriminatorsExhaustive("type")({
    A: (a) => a.a,
    B: (b) => b.b,
    C: (c) => c.c
  })
)
```

**Signature**

```ts
export declare const discriminatorsExhaustive: <D extends string>(
  field: D
) => <
  R,
  Ret,
  P extends { readonly [Tag in Types.Tags<D, R> & string]: (_: Extract<R, Record<D, Tag>>) => Ret } & {
    readonly [Tag in Exclude<keyof P, Types.Tags<D, R>>]: never
  }
>(
  fields: P
) => <I, F, A, Pr>(
  self: Matcher<I, F, R, A, Pr, Ret>
) => [Pr] extends [never] ? (u: I) => Unify<A | ReturnType<P[keyof P]>> : Unify<A | ReturnType<P[keyof P]>>
```
