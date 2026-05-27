Package: `effect`<br />
Module: `Effect`<br />

## Effect.currentParentSpan

Returns the current parent span from the effect context.

**Details**

The effect succeeds with either a local span or external span when one is
present, and fails with `NoSuchElementError` when no parent span is
available.

**Example** (Reading the parent span)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8033)

Since v2.0.0