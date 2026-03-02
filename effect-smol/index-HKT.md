Package: `effect`<br />
Module: `index`<br />

## index.HKT

Re-exports all named exports from the "./HKT.ts" module as `HKT`.

**Example**

```ts
import type { HKT } from "effect"

// Define a TypeLambda for Array
interface ArrayTypeLambda extends HKT.TypeLambda {
  readonly type: Array<this["Target"]>
}

// Use Kind to get the concrete type
type MyArray = HKT.Kind<ArrayTypeLambda, never, never, never, string>
// MyArray is Array<string>

// Define a TypeClass that works with any HKT
interface Functor<F extends HKT.TypeLambda> extends HKT.TypeClass<F> {
  map<A, B>(
    fa: HKT.Kind<F, never, never, never, A>,
    f: (a: A) => B
  ): HKT.Kind<F, never, never, never, B>
}
```

**Signature**

```ts
export * as HKT from "./HKT.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L1502)

Since v2.0.0