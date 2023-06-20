# runtimeMetrics

Returns `true` if the `RuntimeMetrics` `RuntimeFlag` is enabled, `false`
otherwise.

To import and use `runtimeMetrics` from the "Flags" module:

```ts
import * as Flags from '@effect/io/Fiber/Runtime/Flags'

// Can be accessed like this
Flags.runtimeMetrics
```

**Signature**

```ts
export declare const runtimeMetrics: (self: RuntimeFlags) => boolean
```
