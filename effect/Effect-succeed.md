# succeed

Creates an `Effect` that succeeds with the provided value.

Use this function to represent a successful computation that yields a value of type `A`.
The effect does not fail and does not require any environmental context.

To import and use `succeed` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.succeed
```

**Example**

```ts
import { Effect } from "effect"

// Creating an effect that succeeds with the number 42
const success = Effect.succeed(42)
```

**Signature**

```ts
export declare const succeed: <A>(value: A) => Effect<A>
```
