Package: `effect`<br />
Module: `Effect`<br />

## Effect.ensureErrorType

A no-op type constraint that enforces the error channel of an Effect conforms to
the specified error type `E`.

**Example**

```ts
import { Effect } from "effect"

// Ensure that the program does not expose any unhandled errors.
const program = Effect.succeed(42).pipe(Effect.ensureErrorType<never>())
```

**Signature**

```ts
declare const ensureErrorType: <E>() => <A, E2 extends E, R>(effect: Effect<A, E2, R>) => Effect<A, E2, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L14788)

Since v3.17.0