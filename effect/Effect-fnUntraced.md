# fnUntraced

Creates a function that returns an Effect.

The function can be created using a generator function that can yield
effects.

`Effect.fnUntraced` also acts as a `pipe` function, allowing you to create a pipeline after the function definition.

To import and use `fnUntraced` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.fnUntraced
```

**Example**

```ts
// Title: Creating a traced function with a generator function
import { Effect } from "effect"

const logExample = Effect.fnUntraced(function* <N extends number>(n: N) {
  yield* Effect.annotateCurrentSpan("n", n)
  yield* Effect.logInfo(`got: ${n}`)
  yield* Effect.fail(new Error())
})

Effect.runFork(logExample(100))
```

**Signature**

```ts
export declare const fnUntraced: fn.Gen
```
