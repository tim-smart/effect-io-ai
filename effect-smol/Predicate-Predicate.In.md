Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.Predicate.In

Extracts the input type `A` from a `Predicate<A>`.

**When to use**

- You want to infer the input type from a predicate type.
- You are defining generic utilities over predicates.

**Details**

- Type-only; no runtime value is created.
- Resolves to `never` if the type does not match `Predicate`.

**Example** (Infer input)

```ts
import { Predicate } from "effect"

type P = Predicate.Predicate<number>
type Input = Predicate.Predicate.In<P>
```

**See**

- `Predicate.Any`
- `Refinement.In`

**Signature**

```ts
type In<T> = [T] extends [Predicate<infer _A>] ? _A : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L203)

Since v3.6.0