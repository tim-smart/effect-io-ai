Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.Predicate.In

Extracts the input type `A` from a `Predicate<A>`.

**Example**

```ts
import { type Predicate } from "effect"

type T = Predicate.Predicate.In<Predicate.Predicate<string>> // T is string
```

**Signature**

```ts
type In<T> = [T] extends [Predicate<infer _A>] ? _A : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L105)

Since v3.6.0