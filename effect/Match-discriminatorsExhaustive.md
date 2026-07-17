Package: `effect`<br />
Module: `Match`<br />

## Match.discriminatorsExhaustive

Matches values by a discriminator field and requires every possible case to
be handled.

**When to use**

Use to define an exhaustive discriminator handler map that finalizes the
matcher.

**Details**

This is the exhaustive variant of `discriminators`. Each possible
discriminator value must have a corresponding handler, so the matcher is
finalized directly and does not require `Match.exhaustive` at the end of the
pipeline.

**Example** (Handling all discriminator cases)

```ts
import { Match, pipe } from "effect"

const match = pipe(
  Match.type<
    { type: "A"; a: string } | { type: "B"; b: number } | {
      type: "C"
      c: boolean
    }
  >(),
  Match.discriminatorsExhaustive("type")({
    A: (a) => a.a,
    B: (b) => b.b,
    C: (c) => c.c
  })
)
```

**See**

- `discriminators` for defining discriminator handlers without finalizing the matcher

**Signature**

```ts
declare const discriminatorsExhaustive: <D extends string>(field: D) => <R, Ret, P extends { readonly [Tag in Types.Tags<D, R> & string]: (_: Extract<R, Record<D, Tag>>) => Ret; } & { readonly [Tag in Exclude<keyof P, Types.Tags<D, R>>]: never; }>(fields: P) => <I, F, A, Pr>(self: Matcher<I, F, R, A, Pr, Ret>) => [Pr] extends [never] ? (u: I) => Unify<A | ReturnType<P[keyof P]>> : Unify<A | ReturnType<P[keyof P]>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Match.ts#L880)

Since v4.0.0