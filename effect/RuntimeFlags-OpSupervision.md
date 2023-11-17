# OpSupervision

The op supervision flag determines whether or not the Effect runtime system
will supervise all operations of the Effect runtime. Use of this flag will
negatively impact performance, but is required for some operations, such as
profiling.

To import and use `OpSupervision` from the "RuntimeFlags" module:

```ts
import * as RuntimeFlags from "effect/RuntimeFlags"
// Can be accessed like this
RuntimeFlags.OpSupervision
```

**Signature**

```ts
export declare const OpSupervision: RuntimeFlag
```
