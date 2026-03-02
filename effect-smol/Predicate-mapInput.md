Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.mapInput

Transforms the input of a predicate using a mapping function.

When to use:
- You have a predicate on `A` and want one on `B` via `B -> A`.
- You want to check derived values (lengths, projections, etc.).

Behavior:
- Pure; does not mutate input.
- Returns a new predicate that applies `f` before `self`.
- No short-circuit beyond what `self` does.

**Example** (Check string length)

```ts
import { Predicate } from "effect"

const isLongerThan2 = Predicate.mapInput((s: string) => s.length)(
  (n: number) => n > 2
)

console.log(isLongerThan2("hello"))
```

See also: `Predicate`, `and`, `not`

**Signature**

```ts
declare const mapInput: { <B, A>(f: (b: B) => A): (self: Predicate<A>) => Predicate<B>; <A, B>(self: Predicate<A>, f: (b: B) => A): Predicate<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L354)

Since v2.0.0