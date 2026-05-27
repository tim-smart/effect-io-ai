Package: `effect`<br />
Module: `Effect`<br />

## Effect.satisfiesServicesType

Ensures that an effect's requirements type extends a given type `R`.

**Details**

This helper is checked at compile time and does not change the effect's
runtime behavior.

**Example** (Constraining the services type)

```ts
import { Effect } from "effect"

// Define a constraint that requires a string as the requirements type
const satisfiesStringServices = Effect.satisfiesServicesType<string>()

// This works - effect requires string
const validEffect: Effect.Effect<number, never, "config"> = Effect.succeed(42)
const constrainedEffect = satisfiesStringServices(validEffect)

// This would cause a TypeScript compilation error if uncommented:
// const invalidEffect: Effect.Effect<number, never, number> = Effect.succeed(42)
// const constrainedInvalid = satisfiesStringServices(invalidEffect)
```

**Signature**

```ts
declare const satisfiesServicesType: <R>() => <A, E, R2 extends R>(effect: Effect<A, E, R2>) => Effect<A, E, R2>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L14927)

Since v4.0.0