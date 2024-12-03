# succeed

Creates an `Effect` that always succeeds with a given value.

**When to Use**

Use this function when you need an effect that completes successfully with a
specific value without any errors or external dependencies.

To import and use `succeed` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.succeed
```

**Example**

```ts
// Title: Creating a Successful Effect
import { Effect } from "effect"

// Creating an effect that represents a successful scenario
//
//      ┌─── Effect<number, never, never>
//      ▼
const success = Effect.succeed(42)
```

**Signature**

```ts
export declare const succeed: <A>(value: A) => Effect<A>
```
