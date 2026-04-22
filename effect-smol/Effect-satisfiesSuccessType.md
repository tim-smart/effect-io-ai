Package: `effect`<br />
Module: `Effect`<br />

## Effect.satisfiesSuccessType

Ensures that an effect's success type extends a given type `A`.

This function provides compile-time type checking to ensure that the success
value of an effect conforms to a specific type constraint.

**Example**

```ts
import { Effect } from "effect"

// Define a constraint that the success type must be a number
const satisfiesNumber = Effect.satisfiesSuccessType<number>()

// This works - Effect<42, never, never> extends Effect<number, never, never>
const validEffect = satisfiesNumber(Effect.succeed(42))

// This would cause a TypeScript compilation error:
// const invalidEffect = satisfiesNumber(Effect.succeed("string"))
//                                      ^^^^^^^^^^^^^^^^^^^^^^
// Type 'string' is not assignable to type 'number'
```

**Signature**

```ts
declare const satisfiesSuccessType: <A>() => <A2 extends A, E, R>(effect: Effect<A2, E, R>) => Effect<A2, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L14326)

Since v4.0.0