Package: `effect`<br />
Module: `Function`<br />

## Function.FunctionTypeLambda

Type lambda for function types, used for higher-kinded type operations.

**When to use**

Use to represent unary function types in higher-kinded type operations.

**Example** (Creating a function type with a type lambda)

```ts
import type { Function, HKT } from "effect"

// Create a function type using the type lambda
type StringToNumber = HKT.Kind<Function.FunctionTypeLambda, string, never, never, number>
// Equivalent to: (a: string) => number
```

**Signature**

```ts
export interface FunctionTypeLambda extends TypeLambda {
  readonly type: (a: this["In"]) => this["Target"]
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L72)

Since v2.0.0