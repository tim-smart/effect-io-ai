Package: `effect`<br />
Module: `Effect`<br />

## Effect.currentParentSpan

Returns the current parent span from the context.

**Example**

```ts
import { Effect } from "effect"

const childOperation = Effect.gen(function*() {
  const parentSpan = yield* Effect.currentParentSpan
  yield* Effect.log(`Parent span: ${parentSpan}`)
  return "child completed"
})

const program = Effect.gen(function*() {
  yield* Effect.withSpan(childOperation, "child-span")
  return "parent completed"
})

const traced = Effect.withSpan(program, "parent-span")
```

**Signature**

```ts
declare const currentParentSpan: Effect<AnySpan, Cause.NoSuchElementError, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7591)

Since v2.0.0