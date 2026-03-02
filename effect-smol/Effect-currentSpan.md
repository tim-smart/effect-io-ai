Package: `effect`<br />
Module: `Effect`<br />

## Effect.currentSpan

Returns the current span from the context.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  const span = yield* Effect.currentSpan
  yield* Effect.log(`Current span: ${span}`)
  return "done"
})

const traced = Effect.withSpan(program, "my-span")
```

**Signature**

```ts
declare const currentSpan: Effect<Span, Cause.NoSuchElementError, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7552)

Since v2.0.0