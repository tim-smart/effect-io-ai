Package: `effect`<br />
Module: `Effect`<br />

## Effect.try

Creates an `Effect` from a synchronous computation that may throw, mapping
thrown values into the error channel.

**When to use**

Use when you need to perform synchronous operations that might throw, such
as parsing JSON, and want thrown exceptions captured as Effect errors.

**Details**

The thunk is evaluated when the effect runs. If it returns normally, the
returned value becomes the success value. If it throws, the thrown value is
mapped into the error channel.

Passing the thunk directly maps failures to `Cause.UnknownError`.
Passing `{ try, catch }` uses `catch` to map failures to an error of type
`E`.

**Gotchas**

If `catch` throws while mapping the error, that thrown value is treated as
a defect. Return the error value you want in the error channel instead of
throwing it.

**Example** (Parsing JSON)

```ts
import { Effect } from "effect"

const parseJSON = (input: string) =>
  Effect.try(() => JSON.parse(input))

// Success case
Effect.runPromise(parseJSON("{\"name\": \"Alice\"}")).then(console.log)
// Output: { name: "Alice" }

// Failure case maps the thrown value to UnknownError
Effect.runPromiseExit(parseJSON("invalid json")).then(console.log)
```

**Example** (Mapping exceptions to a tagged error)

```ts
import { Data, Effect } from "effect"

class JsonParsingError extends Data.TaggedError("JsonParsingError")<{ readonly cause: unknown }> {}

const parseJSON = (input: string) =>
  Effect.try({
    try: () => JSON.parse(input),
    catch: (cause) => new JsonParsingError({ cause })
  })

Effect.runPromiseExit(parseJSON("invalid json")).then(console.log)
// Output: Exit.failure with custom Error message
```

**See**

- `sync` if the effectful computation is synchronous and does not
throw errors.

**Signature**

```ts
declare const try: <A, E = Cause.UnknownError>(options: { readonly try: LazyArg<A>; readonly catch: (error: unknown) => E; } | LazyArg<A>) => Effect<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L1685)

Since v2.0.0