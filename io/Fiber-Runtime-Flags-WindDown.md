# WindDown

The wind down flag determines whether the Effect runtime system will execute
effects in wind-down mode. In wind-down mode, even if interruption is
enabled and a fiber has been interrupted, the fiber will continue its
execution uninterrupted.

To import and use `WindDown` from the "Flags" module:

```ts
import * as Flags from '@effect/io/Fiber/Runtime/Flags'

// Can be accessed like this
Flags.WindDown
```

**Signature**

```ts
export declare const WindDown: RuntimeFlag
```
