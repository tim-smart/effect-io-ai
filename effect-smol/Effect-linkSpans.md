Package: `effect`<br />
Module: `Effect`<br />

## Effect.linkSpans

For all spans in this effect, add a link with the provided span.

This is useful for connecting spans that are related but not in a direct
parent-child relationship. For example, you might want to link spans from
parallel operations or connect spans across different traces.

**Example**

```ts
import { Effect } from "effect"

const parentEffect = Effect.withSpan("parent-operation")(
  Effect.succeed("parent result")
)

const childEffect = Effect.withSpan("child-operation")(
  Effect.succeed("child result")
)

// Link the child span to the parent span
const program = Effect.gen(function*() {
  const parentSpan = yield* Effect.currentSpan
  const result = yield* childEffect.pipe(
    Effect.linkSpans(parentSpan, { relationship: "follows" })
  )
  return result
})
```

**Example**

```ts
import { Effect } from "effect"

// Link multiple spans
const program = Effect.gen(function*() {
  const span1 = yield* Effect.currentSpan
  const span2 = yield* Effect.currentSpan

  return yield* Effect.succeed("result").pipe(
    Effect.linkSpans([span1, span2], {
      type: "dependency",
      source: "multiple-operations"
    })
  )
})
```

**Signature**

```ts
declare const linkSpans: { (span: AnySpan | ReadonlyArray<AnySpan>, attributes?: Record<string, unknown>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R>(self: Effect<A, E, R>, span: AnySpan | ReadonlyArray<AnySpan>, attributes?: Record<string, unknown>): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7727)

Since v2.0.0