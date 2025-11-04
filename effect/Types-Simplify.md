Package: `effect`<br />
Module: `Types`<br />

## Types.Simplify

Simplifies the type signature of a type.

**Example**

```ts
import type { Types } from "effect"

type Res = Types.Simplify<{ a: number } & { b: number }> // { a: number; b: number; }
```

**Signature**

```ts
type Simplify<A> = {
  [K in keyof A]: A[K]
} extends infer B ? B : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Types.ts#L126)

Since v2.0.0