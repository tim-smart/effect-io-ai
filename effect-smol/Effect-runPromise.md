Package: `effect`<br />
Module: `Effect`<br />

## Effect.runPromise

Executes an effect and returns the result as a `Promise`.

**When to Use**

Use `runPromise` when you need to execute an effect and work with the
result using `Promise` syntax, typically for compatibility with other
promise-based code.

If the effect succeeds, the promise will resolve with the result. If the
effect fails, the promise will reject with an error.

**See**

- `runPromiseExit` for a version that returns an `Exit` type instead of rejecting.

**Example** (Running a Successful Effect as a Promise)

```ts
import { Effect } from "effect"

Effect.runPromise(Effect.succeed(1)).then(console.log)
// Output: 1
```

**Example** (Usage)

```ts
//Example: Handling a Failing Effect as a Rejected Promise
import { Effect } from "effect"

Effect.runPromise(Effect.fail("my error")).catch(console.error)
// Output:
// (FiberFailure) Error: my error
```

**Signature**

```ts
declare const runPromise: <A, E>(effect: Effect<A, E>, options?: RunOptions | undefined) => Promise<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8306)

Since v2.0.0