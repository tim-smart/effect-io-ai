# tryPromise

Creates an `Effect` that represents an asynchronous computation that might fail.

If the `Promise` returned by `evaluate` rejects, the error is caught and the effect fails with an `UnknownException`.

An optional `AbortSignal` can be provided to allow for interruption of the
wrapped `Promise` API.

**Overload with custom error handling:**

Creates an `Effect` that represents an asynchronous computation that might fail, with custom error mapping.

If the `Promise` rejects, the `catch` function maps the error to an error of type `E`.

To import and use `tryPromise` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.tryPromise
```

**Example**

```ts
import { Effect } from "effect"

// Fetching data from an API that may fail
const getTodo = (id: number) => Effect.tryPromise(() => fetch(`https://jsonplaceholder.typicode.com/todos/${id}`))
```

**Signature**

```ts
export declare const tryPromise: {
  <A, E>(options: {
    readonly try: (signal: AbortSignal) => PromiseLike<A>
    readonly catch: (error: unknown) => E
  }): Effect<A, E>
  <A>(evaluate: (signal: AbortSignal) => PromiseLike<A>): Effect<A, Cause.UnknownException>
}
```
