Package: `effect`<br />
Module: `Tracer`<br />

## Tracer.DisablePropagation

Reference used to disable trace propagation. When set on the fiber or span
annotations, new spans are created as non-propagating no-op spans and
disabled spans are skipped when deriving a parent span.

**Example** (Disabling span propagation)

```ts
import { Effect, Tracer } from "effect"

// Disable span propagation for a specific effect
const program = Effect.gen(function*() {
  yield* Effect.log("This will not propagate parent span")
}).pipe(
  Effect.provideService(Tracer.DisablePropagation, true)
)
```

**Signature**

```ts
declare const DisablePropagation: Context.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tracer.ts#L508)

Since v3.12.0