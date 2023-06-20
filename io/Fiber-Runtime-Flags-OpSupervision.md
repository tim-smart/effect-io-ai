# OpSupervision

The op supervision flag determines whether or not the Effect runtime system
will supervise all operations of the Effect runtime. Use of this flag will
negatively impact performance, but is required for some operations, such as
profiling.

To import and use `OpSupervision` from the "Flags" module:

```ts
import * as Flags from '@effect/io/Fiber/Runtime/Flags'

// Can be accessed like this
Flags.OpSupervision
```

**Signature**

```ts
export declare const OpSupervision: RuntimeFlag
```
