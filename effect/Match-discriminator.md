Package: `effect`<br />
Module: `Match`<br />

## Match.discriminator

Matches values based on a specified discriminant field.

**Details**

This function is used to define pattern matching on objects that follow a
**discriminated union** structure, where a specific field (e.g., `type`,
`kind`, `_tag`) determines the variant of the object. It allows matching
multiple values of the discriminant and provides a function to handle the
matched cases.

**Example**

```ts
import { Match, pipe } from "effect"

const match = pipe(
  Match.type<{ type: "A"; a: string } | { type: "B"; b: number } | { type: "C"; c: boolean }>(),
  Match.discriminator("type")("A", "B", (_) => `A or B: ${_.type}`),
  Match.discriminator("type")("C", (_) => `C(${_.c})`),
  Match.exhaustive
)
```

**Signature**

```ts
declare const discriminator: <D extends string>(field: D) => <R, P extends Types.Tags<D, R> & string, Ret, Fn extends (_: Extract<R, Record<D, P>>) => Ret>(...pattern: [first: P, ...values: Array<P>, f: Fn]) => <I, F, A, Pr>(self: Matcher<I, F, R, A, Pr, Ret>) => Matcher<I, Types.AddWithout<F, Extract<R, Record<D, P>>>, Types.ApplyFilters<I, Types.AddWithout<F, Extract<R, Record<D, P>>>>, A | ReturnType<Fn>, Pr, Ret>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Match.ts#L529)

Since v1.0.0