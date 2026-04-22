Package: `effect`<br />
Module: `Effect`<br />

## Effect.try

Creates an `Effect` that represents a synchronous computation that might
fail.

**When to Use**

In situations where you need to perform synchronous operations that might
fail, such as parsing JSON, you can use the `try` constructor. This
constructor is designed to handle operations that could throw exceptions by
capturing those exceptions and transforming them into manageable errors.

**Error Handling**

There are two ways to handle errors with `try`:

1. If you don't provide a `catch` function, the error is caught and the
   effect fails with an `UnknownError`.
2. If you provide a `catch` function, the error is caught and the `catch`
   function maps it to an error of type `E`.

**Example**

```ts
Basic Usage with Default Error Handling
```ts
import { Effect } from "effect"

const parseJSON = (input: string) =>
  Effect.try({
    try: () => JSON.parse(input),
    catch: (error) => error as Error
  })

// Success case
Effect.runPromise(parseJSON("{\"name\": \"Alice\"}")).then(console.log)
// Output: { name: "Alice" }

// Failure case
Effect.runPromiseExit(parseJSON("invalid json")).then(console.log)
// Output: Exit.failure with Error
```
```

**Example**

```ts
Custom Error Handling
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
```

**See**

- `sync` if the effectful computation is synchronous and does not
throw errors.

**Signature**

```ts
declare const try: <A, E>(options: { try: LazyArg<A>; catch: (error: unknown) => E; }) => Effect<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1820)

Since v2.0.0