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
   effect fails with an `UnknownError`.
2. If you provide a `catch` function, the error is caught and the `catch`
   function maps it to an error of type `E`.

**Interruptions**

An optional `AbortSignal` can be provided to allow for interruption of the
wrapped `Promise` API.

**Example**

```ts
Fetching a TODO Item
```ts
import { Effect } from "effect"

const getTodo = (id: number) =>
  // Will catch any errors and propagate them as UnknownError
  Effect.tryPromise(() =>
    fetch(`https://jsonplaceholder.typicode.com/todos/${id}`)
  )

//      ┌─── Effect<Response, UnknownError, never>
//      ▼
const program = getTodo(1)
```
```

**Example**

```ts
Custom Error Handling
```ts
import { Data, Effect } from "effect"

class TodoFetchError extends Data.TaggedError("TodoFetchError")<{ readonly cause: unknown }> {}

const getTodo = (id: number) =>
  Effect.tryPromise({
    try: () => fetch(`https://jsonplaceholder.typicode.com/todos/${id}`),
    // remap the error
    catch: (cause) => new TodoFetchError({ cause })
  })

//      ┌─── Effect<Response, TodoFetchError, never>
//      ▼
const program = getTodo(1)
```
```

**See**

- `promise` if the effectful computation is asynchronous and does not throw errors.

**Signature**

```ts
declare const tryPromise: <A, E = Cause.UnknownError>(options: { readonly try: (signal: AbortSignal) => PromiseLike<A>; readonly catch: (error: unknown) => E; } | ((signal: AbortSignal) => PromiseLike<A>)) => Effect<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1082)

Since v2.0.0