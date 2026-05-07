Package: `effect`<br />
Module: `Effect`<br />

## Effect.withParentSpan

Adds the provided span to the current span stack.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  const span = yield* Effect.makeSpan("parent-span")
  const childTask = Effect.log("Child operation")
  yield* Effect.withParentSpan(childTask, span)
  return "completed"
})
```

**Signature**

```ts
declare const withParentSpan: { (value: AnySpan, options?: TraceOptions): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, ParentSpan>>; <A, E, R>(self: Effect<A, E, R>, value: AnySpan, options?: TraceOptions): Effect<A, E, Exclude<R, ParentSpan>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8004)

Since v2.0.0