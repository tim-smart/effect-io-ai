# check

Checks the condition, and if it's true, returns unit, otherwise, retries.

To import and use `check` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.check
```

**Signature**

```ts
export declare const check: (predicate: LazyArg<boolean>) => STM<never, never, void>
```
