Package: `effect`<br />
Module: `Function`<br />

## Function.FunctionTypeLambda

Type lambda for function types, used for higher-kinded type operations.

**Example**

```ts
import type { FunctionTypeLambda } from "effect/Function"
import type { Kind } from "effect/HKT"

// Create a function type using the type lambda
type StringToNumber = Kind<FunctionTypeLambda, string, never, never, number>
// Equivalent to: (a: string) => number
```

**Signature**

```ts
export interface FunctionTypeLambda extends TypeLambda {
  readonly type: (a: this["In"]) => this["Target"]
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L23)

Since v2.0.0