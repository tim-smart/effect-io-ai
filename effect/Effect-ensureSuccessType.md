Package: `effect`<br />
Module: `Effect`<br />

## Effect.ensureSuccessType

A no-op type constraint that enforces the success channel of an Effect conforms to
the specified success type `A`.

**Example**

```ts
import { Effect } from "effect"

// Ensure that the program does not expose any unhandled errors.
const program = Effect.succeed(42).pipe(Effect.ensureSuccessType<number>())
```

**Signature**

```ts
declare const ensureSuccessType: <A>() => <A2 extends A, E, R>(effect: Effect<A2, E, R>) => Effect<A2, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L14773)

Since v3.17.0