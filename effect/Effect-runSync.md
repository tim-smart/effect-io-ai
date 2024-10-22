# runSync

Executes an effect synchronously and returns its result.

Use `runSync` when you are certain that the effect is purely synchronous and will not perform any asynchronous operations.
If the effect fails or contains asynchronous tasks, it will throw an error.

To import and use `runSync` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.runSync
```

**Example**

```ts
import { Effect } from "effect"

// Define a synchronous effect
const program = Effect.sync(() => {
  console.log("Hello, World!")
  return 1
})

// Execute the effect synchronously
const result = Effect.runSync(program)
// Output: Hello, World!

console.log(result)
// Output: 1
```

**Signature**

```ts
export declare const runSync: <A, E>(effect: Effect<A, E>) => A
```
