Package: `effect`<br />
Module: `Effect`<br />

## Effect.promise

Creates an `Effect` that represents an asynchronous computation guaranteed to
succeed.

**When to use**

Use to convert a `Promise` into an `Effect` when the async operation is
guaranteed to succeed and will not reject.

**Details**

An optional `AbortSignal` can be provided to allow for interruption of the
wrapped `Promise` API.

**Gotchas**

The `Promise` must not reject. If it rejects, the rejection is treated as a
defect, not as a typed failure. Use `tryPromise` when rejection is expected.

Interruption aborts the provided `AbortSignal`, but the underlying
asynchronous operation only stops if it observes that signal.

**Example** (Wrapping a non-rejecting Promise)

```ts
import { Effect } from "effect"

const delay = (message: string) =>
  Effect.promise<string>(
    () =>
      new Promise((resolve) => {
        setTimeout(() => {
          resolve(message)
        }, 2000)
      })
  )

//      ┌─── Effect<string, never, never>
//      ▼
const program = delay("Async operation completed successfully!")
```

**See**

- `tryPromise` for a version that can handle failures.

**Signature**

```ts
declare const promise: <A>(evaluate: (signal: AbortSignal) => PromiseLike<A>) => Effect<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L938)

Since v2.0.0