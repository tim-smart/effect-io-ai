# try

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

To import and use `try` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.try
undefined

**Example**

```ts
// Title: Safe JSON Parsing
import { Effect } from "effect"

const parse = (input: string) =>
  // This might throw an error if input is not valid JSON
  Effect.try(() => JSON.parse(input))

//      ┌─── Effect<any, UnknownException, never>
//      ▼
const program = parse("")
```

**Example**

```ts
// Title: Custom Error Handling
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
