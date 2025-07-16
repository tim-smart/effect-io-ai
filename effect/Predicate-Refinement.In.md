Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.Refinement.In

Extracts the input type `A` from a `Refinement<A, B>`.

**Example**

```ts
import { type Predicate } from "effect"

type IsString = Predicate.Refinement<unknown, string>
type T = Predicate.Refinement.In<IsString> // T is unknown
```

**Signature**

```ts
type In<T> = [T] extends [Refinement<infer _A, infer _>] ? _A : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L136)

Since v3.6.0