# fn

Creates a function that returns an Effect, which includes a stack trace
with relevant location information if an error occurs and is automatically
traced with a span pointing to the call site.

The name passed as the first argument is used as a span.

The name is optional; if not provided, the span won't be added, but the stack trace will still be present.

The function can be created using either a generator function that can yield
effects or a normal function that returns an effect.

`Effect.fn` also acts as a `pipe` function, allowing you to create a pipeline
after the function definition using the effect returned by the generator
function as the starting value of the pipeline.

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

const logExample = Effect.fn("logExample")(
  // Definition location: 4
  function* <N extends number>(n: N) {
    yield* Effect.annotateCurrentSpan("n", n)
    console.log(`got: ${n}`)
    yield* Effect.fail(new Error()) // Raise location: 8
  }
)

// Effect.runFork(
//   logExample(100).pipe( // Call location: 13
//     Effect.catchAllCause(Effect.logError)
//   )
// )
// Output:
// got: 100
// timestamp=... level=ERROR fiber=#0 cause="Error: An error has occurred
//     at <anonymous> (/.../index.ts:8:24) <= Raise location
//     at logExample (/.../index.ts:4:27)  <= Definition location
//     at logExample (/.../index.ts:13:3)" <= Call location
```

**Example**

```ts
// Title: Creating a traced function with a function
import { Effect } from "effect"

const logExample = Effect.fn("logExample")(function (n: number) {
  console.log(`got: ${n}`)
  return Effect.fail(new Error(`An error has occurred`))
})
```

**Example**

```ts
// Title: Creating a traced function and a pipeline
import { Effect } from "effect"

const logExample = Effect.fn("logExample")(
  function (n: number) {
    console.log(`got: ${n}`)
    return Effect.fail(new Error(`An error has occurred`))
  },
  // Add a delay to the effect
  Effect.delay("1 second")
)
```

**Signature**

```ts
export declare const fn: fn.Gen & fn.NonGen & ((name: string, options?: Tracer.SpanOptions) => fn.Gen & fn.NonGen)
```
