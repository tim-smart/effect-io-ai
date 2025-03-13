Package: `effect`<br />
Module: `GlobalValue`<br />

## GlobalValue.globalValue

Retrieves or computes a global value associated with the given `id`. If the value for this `id`
has already been computed, it will be returned from the global store. If it does not exist yet,
the provided `compute` function will be executed to compute the value, store it, and then return it.

This ensures that even in cases where the module is imported multiple times (e.g., in mixed environments
like CommonJS and ESM, or during hot-reloading in development), the value is computed only once and reused
thereafter.

**Example**

```ts
import { globalValue } from "effect/GlobalValue"

// This cache will persist as long as the module is running,
// even if reloaded or imported elsewhere
const myCache = globalValue(
  Symbol.for("myCache"),
  () => new WeakMap<object, number>()
)
```

**Signature**

```ts
declare const globalValue: <A>(id: unknown, compute: () => A) => A
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/GlobalValue.ts#L44)

Since v2.0.0