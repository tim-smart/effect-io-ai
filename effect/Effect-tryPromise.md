Package: `effect`<br />
Module: `Effect`<br />

## Effect.tryPromise

Creates an `Effect` from an asynchronous computation that may throw or
reject, mapping failures into the error channel.

**When to use**

Use when you need to perform asynchronous operations that might fail, such
as fetching data from an API, and want thrown exceptions or rejected promises
captured as Effect errors.

**Details**

The promise thunk is evaluated when the effect runs. If it returns a promise
that resolves, the resolved value becomes the success value. If the thunk
throws before returning a promise, or if the returned promise rejects, the
thrown or rejected value is mapped into the error channel.

Passing the thunk directly maps failures to `Cause.UnknownError`.
Passing `{ try, catch }` uses `catch` to map failures to an error of type
`E`.

The thunk receives an `AbortSignal` that is aborted if the effect is
interrupted. The underlying asynchronous operation only stops if it observes
that signal.

**Gotchas**

If `catch` throws while mapping the error, that thrown value is treated as a
defect. Return the error value you want in the error channel instead of
throwing it.

**Example** (Wrapping a fetch request that may fail)

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

**Example** (Mapping Promise rejections to a tagged error)

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

**See**

- `promise` if the effectful computation is asynchronous and does not throw errors.

**Signature**

```ts
declare const tryPromise: <A, E = Cause.UnknownError>(options: { readonly try: (signal: AbortSignal) => PromiseLike<A>; readonly catch: (error: unknown) => E; } | ((signal: AbortSignal) => PromiseLike<A>)) => Effect<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L943)

Since v2.0.0