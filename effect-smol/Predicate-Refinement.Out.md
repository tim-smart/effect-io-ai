Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.Refinement.Out

Extracts the output type `B` from a `Refinement<A, B>`.

When to use:
- You want to infer the narrowed type from a refinement type.

Behavior:
- Type-only; no runtime value is created.
- Resolves to `never` if the type does not match `Refinement`.

**Example** (Infer output)

```ts
import { Predicate } from "effect"

type R = Predicate.Refinement<unknown, string>
type Output = Predicate.Refinement.Out<R>
```

See also: `Refinement.In`

**Signature**

```ts
type Out<T> = [T] extends [Refinement<infer _, infer _B>] ? _B : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L298)

Since v3.6.0