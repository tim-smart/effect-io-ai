Package: `effect`<br />
Module: `Layer`<br />

## Layer.satisfiesSuccessType

Ensures that an layer's success type extends a given type `ROut`.

This function provides compile-time type checking to ensure that the success
value of an layer conforms to a specific type constraint.

**Example**

```ts
import { Layer } from "effect"

declare const FortyTwoLayer: Layer.Layer<42, never, never>
declare const StringLayer: Layer.Layer<string, never, never>

// Define a constraint that the success type must be a number
const satisfiesNumber = Layer.satisfiesSuccessType<number>()

// This works - Layer<42, never, never> extends Layer<number, never, never>
const validLayer = satisfiesNumber(FortyTwoLayer)

// This would cause a TypeScript compilation error:
// const invalidLayer = satisfiesNumber(StringLayer)
//                                     ^^^^^^^^^^^
// Type 'number' is not assignable to type 'string'
```

**Signature**

```ts
declare const satisfiesSuccessType: <ROut>() => <ROut2 extends ROut, E, RIn>(layer: Layer<ROut2, E, RIn>) => Layer<ROut2, E, RIn>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L1958)

Since v4.0.0