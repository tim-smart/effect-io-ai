Package: `effect`<br />
Module: `Effect`<br />

## Effect.tryPromise

Creates an `Effect` that represents an asynchronous computation that might
fail.

**When to Use**

In situations where you need to perform asynchronous operations that might
fail, such as fetching data from an API, you can use the `tryPromise`
constructor. This constructor is designed to handle operations that could
throw exceptions by capturing those exceptions and transforming them into
manageable errors.

**Error Handling**

There are two ways to handle errors with `tryPromise`:

1. If you don't provide a `catch` function, the error is caught and the
   effect fails with an `UnknownException`.
2. If you provide a `catch` function, the error is caught and the `catch`
   function maps it to an error of type `E`.

**Interruptions**

An optional `AbortSignal` can be provided to allow for interruption of the
wrapped `Promise` API.

**Example** (Fetching a TODO Item)

```ts
import { Effect } from "effect"

const getTodo = (id: number) =>
  // Will catch any errors and propagate them as UnknownException
  Effect.tryPromise(() =>
    fetch(`https://jsonplaceholder.typicode.com/todos/${id}`)
  )

//      ┌─── Effect<Response, UnknownException, never>
//      ▼
const program = getTodo(1)
```

**Example** (Custom Error Handling)

```ts
import { Effect } from "effect"

const getTodo = (id: number) =>
  Effect.tryPromise({
    try: () => fetch(`https://jsonplaceholder.typicode.com/todos/${id}`),
    // remap the error
    catch: (unknown) => new Error(`something went wrong ${unknown}`)
  })

//      ┌─── Effect<Response, Error, never>
//      ▼
const program = getTodo(1)
```

**See**

- `promise` if the effectful computation is asynchronous and does not throw errors.

**Signature**

```ts
declare const tryPromise: { <A, E>(options: { readonly try: (signal: AbortSignal) => PromiseLike<A>; readonly catch: (error: unknown) => E; }): Effect<A, E>; <A>(evaluate: (signal: AbortSignal) => PromiseLike<A>): Effect<A, Cause.UnknownException>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L4677)

Since v2.0.0