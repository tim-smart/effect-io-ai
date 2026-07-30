Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.Refinement.Out

Extracts the output (refined) type `B` from a `Refinement<A, B>`.

**Example**

```ts
import { type Predicate } from "effect"

type IsString = Predicate.Refinement<unknown, string>
type T = Predicate.Refinement.Out<IsString> // T is string
```

**Signature**

```ts
type Out<T> = [T] extends [Refinement<infer _, infer _B>] ? _B : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L151)

Since v3.6.0