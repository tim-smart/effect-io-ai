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
   effect fails with an `UnknownException`.
2. If you provide a `catch` function, the error is caught and the `catch`
   function maps it to an error of type `E`.

**Example** (Safe JSON Parsing)

```ts
import { Effect } from "effect"

const parse = (input: string) =>
  // This might throw an error if input is not valid JSON
  Effect.try(() => JSON.parse(input))

//      ┌─── Effect<any, UnknownException, never>
//      ▼
const program = parse("")

```

**Example** (Custom Error Handling)

```ts
import { Effect } from "effect"

const parse = (input: string) =>
  Effect.try({
    // JSON.parse may throw for bad input
    try: () => JSON.parse(input),
    // remap the error
    catch: (unknown) => new Error(`something went wrong ${unknown}`)
  })

//      ┌─── Effect<any, Error, never>
//      ▼
const program = parse("")
```

**See**

- `sync` if the effectful computation is synchronous and does not
throw errors.

**Signature**

```ts
declare const try: { <A, E>(options: { readonly try: LazyArg<A>; readonly catch: (error: unknown) => E; }): Effect<A, E>; <A>(thunk: LazyArg<A>): Effect<A, Cause.UnknownException>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L4567)

Since v2.0.0