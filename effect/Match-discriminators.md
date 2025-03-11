## discriminators

Matches values based on a field that serves as a discriminator, mapping each
possible value to a corresponding handler.

**Details**

This function simplifies working with discriminated unions by letting you
define a set of handlers for each possible value of a given field. Instead of
chaining multiple calls to `discriminator`, this function allows
defining all possible cases at once using an object where the keys are the
possible values of the field, and the values are the corresponding handler
functions.

**Example**

```ts
import { Match, pipe } from "effect"

const match = pipe(
  Match.type<{ type: "A"; a: string } | { type: "B"; b: number } | { type: "C"; c: boolean }>(),
  Match.discriminators("type")({
    A: (a) => a.a,
    B: (b) => b.b,
    C: (c) => c.c
  }),
  Match.exhaustive
)
```

**Signature**

```ts
declare const discriminators: <D extends string>(field: D) => <R, Ret, P extends { readonly [Tag in Types.Tags<D, R> & string]?: ((_: Extract<R, Record<D, Tag>>) => Ret) | undefined; } & { readonly [Tag in Exclude<keyof P, Types.Tags<D, R>>]: never; }>(fields: P) => <I, F, A, Pr>(self: Matcher<I, F, R, A, Pr, Ret>) => Matcher<I, Types.AddWithout<F, Extract<R, Record<D, keyof P>>>, Types.ApplyFilters<I, Types.AddWithout<F, Extract<R, Record<D, keyof P>>>>, A | ReturnType<P[keyof P] & {}>, Pr, Ret>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Match.ts#L608)

Since v1.0.0