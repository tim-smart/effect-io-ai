# RuntimeFlags

Represents a set of `RuntimeFlag`s. `RuntimeFlag`s affect the operation of
the Effect runtime system. They are exposed to application-level code because
they affect the behavior and performance of application code.

To import and use `RuntimeFlags` from the "Flags" module:

```ts
import * as Flags from '@effect/io/Fiber/Runtime/Flags'

// Can be accessed like this
Flags.RuntimeFlags
```
