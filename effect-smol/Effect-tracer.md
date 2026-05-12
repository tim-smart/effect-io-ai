Package: `effect`<br />
Module: `Effect`<br />

## Effect.tracer

Returns the current tracer from the context.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  const currentTracer = yield* Effect.tracer
  yield* Effect.log(`Using tracer: ${currentTracer}`)
  return "operation completed"
})
```

**Signature**

```ts
declare const tracer: Effect<Tracer, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7443)

Since v2.0.0