Package: `effect`<br />
Module: `Effect`<br />

## Effect.runPromise

Executes an effect and returns the result as a `Promise`.

**Details**

This function runs an effect and converts its result into a `Promise`. If the
effect succeeds, the `Promise` will resolve with the successful result. If
the effect fails, the `Promise` will reject with an error, which includes the
failure details of the effect.

The optional `options` parameter allows you to pass an `AbortSignal` for
cancellation, enabling more fine-grained control over asynchronous tasks.

**When to Use**

Use this function when you need to execute an effect and work with its result
in a promise-based system, such as when integrating with third-party
libraries that expect `Promise` results.

**Example** (Running a Successful Effect as a Promise)

```ts
import { Effect } from "effect"

Effect.runPromise(Effect.succeed(1)).then(console.log)
// Output: 1
```

**Example** (Handling a Failing Effect as a Rejected Promise)

```ts
import { Effect } from "effect"

Effect.runPromise(Effect.fail("my error")).catch(console.error)
// Output:
// (FiberFailure) Error: my error
```

**See**

- `runPromiseExit` for a version that returns an `Exit` type instead
of rejecting.

**Signature**

```ts
declare const runPromise: <A, E>(effect: Effect<A, E, never>, options?: { readonly signal?: AbortSignal; } | undefined) => Promise<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L12104)

Since v2.0.0