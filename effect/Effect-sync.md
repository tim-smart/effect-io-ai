# sync

Creates an `Effect` that represents a synchronous side-effectful computation.

**Details**

The provided function (`thunk`) must not throw errors; if it does, the error
will be treated as a "defect".

This defect is not a standard error but indicates a flaw in the logic that
was expected to be error-free. You can think of it similar to an unexpected
crash in the program, which can be further managed or logged using tools like
{@link catchAllDefect}.

**When to Use**

Use this function when you are sure the operation will not fail.

To import and use `sync` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.sync
```

**Example**

```ts
// Title: Logging a Message
import { Effect } from "effect"

const log = (message: string) =>
  Effect.sync(() => {
    console.log(message) // side effect
  })

//      ┌─── Effect<void, never, never>
//      ▼
const program = log("Hello, World!")
```

**Signature**

```ts
export declare const sync: <A>(thunk: LazyArg<A>) => Effect<A>
```
