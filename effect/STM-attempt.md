# attempt

Creates an `STM` value from a partial (but pure) function.

To import and use `attempt` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.attempt
```

**Signature**

```ts
export declare const attempt: <A>(evaluate: LazyArg<A>) => STM<A, unknown, never>
```
