# void

Represents an effect that does nothing and produces no value.

**When to Use**

Use this effect when you need to represent an effect that does nothing.
This is useful in scenarios where you need to satisfy an effect-based
interface or control program flow without performing any operations. For
example, it can be used in situations where you want to return an effect
from a function but do not need to compute or return any result.

To import and use `void` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.void
```
