Package: `effect`<br />
Module: `Effect`<br />

## Effect.withSpan

Wraps the effect with a new span for tracing.

**Example**

```ts
import { Effect } from "effect"

const task = Effect.gen(function*() {
  yield* Effect.log("Executing task")
  return "result"
})

const traced = Effect.withSpan(task, "my-task", {
  attributes: { version: "1.0" }
})
```

**Signature**

```ts
declare const withSpan: { <Args extends ReadonlyArray<any>>(name: string, options?: SpanOptionsNoTrace | ((...args: NoInfer<Args>) => SpanOptionsNoTrace) | undefined, traceOptions?: TraceOptions | undefined): <A, E, R>(self: Effect<A, E, R>, ...args: Args) => Effect<A, E, Exclude<R, ParentSpan>>; <A, E, R>(self: Effect<A, E, R>, name: string, options?: SpanOptions | undefined): Effect<A, E, Exclude<R, ParentSpan>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7894)

Since v2.0.0