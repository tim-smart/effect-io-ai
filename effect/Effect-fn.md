# fn

Creates a function that returns an Effect which is automatically traced with a span pointing to the call site.

The function can be created both using a generator function that can yield effects or using a normal function.

`Effect.fn` also acts as a `pipe` function, allowing you to create a pipeline after the function definition.

To import and use `fn` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.fn
```

**Example**

```ts
// Title: Creating a traced function with a generator function
import { Effect } from "effect"

const logExample = Effect.fn("logExample")(function* <N extends number>(n: N) {
  yield* Effect.annotateCurrentSpan("n", n)
  yield* Effect.logInfo(`got: ${n}`)
  yield* Effect.fail(new Error())
})

Effect.runFork(
  // This location is printed in the stack trace of the following `Effect.logError`
  logExample(100).pipe(Effect.catchAllCause(Effect.logError))
)
```

**Example**

```ts
// Title: Creating a traced function with a pipeline
import { Effect } from "effect"

const logExample = Effect.fn("example")(
  function* <N extends number>(n: N) {
    yield* Effect.annotateCurrentSpan("n", n)
    yield* Effect.logInfo(`got: ${n}`)
    yield* Effect.fail(new Error())
  },
  // Add a delay to the effect
  Effect.delay("1 second")
)
```

**Signature**

```ts
export declare const fn: (name: string, options?: Tracer.SpanOptions) => fn.Gen & fn.NonGen
```
