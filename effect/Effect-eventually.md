## eventually

Runs an effect repeatedly until it succeeds, ignoring errors.

**Details**

This function takes an effect and runs it repeatedly until the effect
successfully completes. If the effect fails, it will ignore the error and
retry the operation. This is useful when you need to perform a task that may
fail occasionally, but you want to keep trying until it eventually succeeds.
It works by repeatedly executing the effect until it no longer throws an
error.

**When to Use**

Use this function when you want to retry an operation multiple times until it
succeeds. It is helpful in cases where the operation may fail temporarily
(e.g., a network request), and you want to keep trying without handling or
worrying about the errors.

**Example**

```ts
import { Effect } from "effect"

let counter = 0

const effect = Effect.try(() => {
  counter++
  if (counter < 3) {
    console.log("running effect")
    throw new Error("error")
  } else {
    console.log("effect done")
    return "some result"
  }
})

const program = Effect.eventually(effect)

// Effect.runPromise(program).then(console.log)
// Output:
// running effect
// running effect
// effect done
// some result
```

**Signature**

```ts
declare const eventually: <A, E, R>(self: Effect<A, E, R>) => Effect<A, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L4016)

Since v2.0.0