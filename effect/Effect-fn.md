# fn

Creates a function that returns an Effect which is automatically traced with a span pointing to the call site.

The function can be created both using a generator function that can yield effects or using a normal function.

To import and use `fn` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.fn
undefined

**Example**

```ts
import { Effect } from "effect"

const logExample = Effect.fn("logExample")(function* <N extends number>(n: N) {
  yield* Effect.annotateCurrentSpan("n", n)
  yield* Effect.logInfo(`got: ${n}`)
  yield* Effect.fail(new Error())
}, Effect.delay("1 second"))

Effect.runFork(
  // this location is printed on the stack trace of the following `Effect.logError`
  logExample(100).pipe(Effect.catchAllCause(Effect.logError))
)
```

**Signature**

```ts
export declare const fn: (name: string, options?: Tracer.SpanOptions) => fn.Gen & fn.NonGen
```
