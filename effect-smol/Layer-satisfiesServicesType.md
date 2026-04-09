Package: `effect`<br />
Module: `Layer`<br />

## Layer.satisfiesServicesType

Ensures that an layer's requirements type extends a given type `R`.

This function provides compile-time type checking to ensure that the
requirements (context) type of an layer conforms to a specific type constraint.

**Example**

```ts
import { Layer } from "effect"

declare const FortyTwoLayer: Layer.Layer<never, never, 42>
declare const StringLayer: Layer.Layer<never, never, string>

// Define a constraint that the success type must be a number
const satisfiesNumber = Layer.satisfiesServicesType<number>()

// This works - Layer<never, never, 42> extends Layer<never, never, number>
const validLayer = satisfiesNumber(FortyTwoLayer)

// This would cause a TypeScript compilation error:
// const invalidLayer = satisfiesNumber(StringLayer)
//                                     ^^^^^^^^^^^
// Type 'string' is not assignable to type 'number'
```

**Signature**

```ts
declare const satisfiesServicesType: <RIn>() => <ROut, E, RIn2 extends RIn>(layer: Layer<ROut, E, RIn2>) => Layer<ROut, E, RIn2>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L2043)

Since v4.0.0