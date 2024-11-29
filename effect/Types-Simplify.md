# Simplify

Simplifies the type signature of a type.

To import and use `Simplify` from the "Types" module:

ts
import \* as Types from "effect/Types"
// Can be accessed like this
Types.Simplify
undefined

**Example**

```ts
import type { Types } from "effect"

type Res = Types.Simplify<{ a: number } & { b: number }> // { a: number; b: number; }
```
