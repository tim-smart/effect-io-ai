Package: `effect`<br />
Module: `Effect`<br />

## Effect.never

Returns an effect that will never produce anything. The moral equivalent of
`while(true) {}`, only without the wasted CPU cycles.

**Example**

```ts
import { Effect } from "effect"

// This effect will never complete
const program = Effect.never

// This will run forever (or until interrupted)
// Effect.runPromise(program) // Never resolves

// Use with timeout for practical applications
const timedProgram = Effect.timeout(program, "1 second")
```

**Signature**

```ts
declare const never: Effect<never, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1371)

Since v2.0.0