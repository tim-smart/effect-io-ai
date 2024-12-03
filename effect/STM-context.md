# context

Retrieves the environment inside an stm.

To import and use `context` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.context
```

**Signature**

```ts
export declare const context: <R>() => STM<Context.Context<R>, never, R>
```
