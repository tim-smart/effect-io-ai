Package: `effect`<br />
Module: `Effect`<br />

## Effect.satisfiesErrorType

Ensures that an effect's error type extends a given type `E`.

**Details**

This helper is checked at compile time and does not change the effect's
runtime behavior.

**Example** (Constraining the error type)

```ts
import { Data, Effect } from "effect"

class ValidationError extends Data.TaggedError("ValidationError")<{}> {}

// Define a constraint that the error type must be a ValidationError
const satisfiesError = Effect.satisfiesErrorType<ValidationError>()

// This works - Effect<number, ValidationError, never> extends the constrained type
const validEffect = satisfiesError(Effect.fail(new ValidationError()))

// This would cause a TypeScript compilation error:
// const invalidEffect = satisfiesError(Effect.fail("string error"))
//                                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^
// Type 'string' is not assignable to type 'ValidationError'
```

**Signature**

```ts
declare const satisfiesErrorType: <E>() => <A, E2 extends E, R>(effect: Effect<A, E2, R>) => Effect<A, E2, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L15173)

Since v4.0.0