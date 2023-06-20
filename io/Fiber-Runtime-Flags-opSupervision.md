# opSupervision

Returns `true` if the `OpSupervision` `RuntimeFlag` is enabled, `false`
otherwise.

To import and use `opSupervision` from the "Flags" module:

```ts
import * as Flags from '@effect/io/Fiber/Runtime/Flags'

// Can be accessed like this
Flags.opSupervision
```

**Signature**

```ts
export declare const opSupervision: (self: RuntimeFlags) => boolean
```
