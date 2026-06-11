Package: `effect`<br />
Module: `Types`<br />

## Types.NoInfer

Prevents TypeScript from inferring a type parameter from a specific
position.

**When to use**

Use when a function parameter must match an inferred type without becoming
an inference source.

**Details**

The parameter using `NoInfer` must still match the inferred type.

**Example** (Controlling inference)

```ts
import type { Types } from "effect"

declare function withDefault<T>(value: T, fallback: Types.NoInfer<T>): T

// T is inferred as "a" | "b" from the first argument only
const result = withDefault<"a" | "b">("a", "b")
```

**Signature**

```ts
type NoInfer<A> = [A][A extends any ? 0 : never]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L544)

Since v2.0.0