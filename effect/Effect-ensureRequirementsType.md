Package: `effect`<br />
Module: `Effect`<br />

## Effect.ensureRequirementsType

A no-op type constraint that enforces the requirements channel of an Effect conforms to
the specified requirements type `R`.

**Example**

```ts
import { Effect } from "effect"

// Ensure that the program does not have any requirements.
const program = Effect.succeed(42).pipe(Effect.ensureRequirementsType<never>())
```

**Signature**

```ts
declare const ensureRequirementsType: <R>() => <A, E, R2 extends R>(effect: Effect<A, E, R2>) => Effect<A, E, R2>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L14798)

Since v3.17.0