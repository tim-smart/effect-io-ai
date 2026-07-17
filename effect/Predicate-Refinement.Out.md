Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.Refinement.Out

Extracts the output type `B` from a `Refinement<A, B>`.

**When to use**

Use when you want to infer the narrowed type from a refinement type.

**Details**

This is type-only and creates no runtime value. It resolves to `never` if
the type does not match `Refinement`.

**Example** (Inferring the output type)

```ts
import { Predicate } from "effect"

type R = Predicate.Refinement<unknown, string>
type Output = Predicate.Refinement.Out<R>
```

**See**

- `Refinement.In`

**Signature**

```ts
type Out<T> = [T] extends [Refinement<infer _, infer _B>] ? _B : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L281)

Since v3.6.0