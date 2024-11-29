# globalValue

Retrieves or computes a global value associated with the given `id`. If the value for this `id`
has already been computed, it will be returned from the global store. If it does not exist yet,
the provided `compute` function will be executed to compute the value, store it, and then return it.

This ensures that even in cases where the module is imported multiple times (e.g., in mixed environments
like CommonJS and ESM, or during hot-reloading in development), the value is computed only once and reused
thereafter.

To import and use `globalValue` from the "GlobalValue" module:

ts
import \* as GlobalValue from "effect/GlobalValue"
// Can be accessed like this
GlobalValue.globalValue
undefined

**Example**

```ts
import { globalValue } from "effect/GlobalValue"

// This cache will persist as long as the module is running,
// even if reloaded or imported elsewhere
const myCache = globalValue(Symbol.for("myCache"), () => new WeakMap<object, number>())
```

**Signature**

```ts
export declare const globalValue: <A>(id: unknown, compute: () => A) => A
```
