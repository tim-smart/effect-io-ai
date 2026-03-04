Package: `effect`<br />
Module: `Layer`<br />

## Layer.satisfiesErrorType

Ensures that an layer's error type extends a given type `E`.

This function provides compile-time type checking to ensure that the error
type of an layer conforms to a specific type constraint.

**Example**

```ts
import { Layer } from "effect"

declare const ErrorLayer: Layer.Layer<never, Error, never>
declare const TypeErrorLayer: Layer.Layer<never, TypeError, never>
declare const StringLayer: Layer.Layer<never, string, never>

// Define a constraint that the error type must be an Error
const satisfiesError = Layer.satisfiesErrorType<Error>()

// This works - Layer<never, TypeError, never> extends Layer<never, Error, never>
const validLayer = satisfiesError(TypeErrorLayer)

// This would cause a TypeScript compilation error:
// const invalidLayer = satisfiesError(StringLayer)
//                                     ^^^^^^^^^^^
// Type 'string' is not assignable to type 'Error'
```

**Signature**

```ts
declare const satisfiesErrorType: <E>() => <ROut, E2 extends E, RIn>(layer: Layer<ROut, E2, RIn>) => Layer<ROut, E2, RIn>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L1854)

Since v4.0.0