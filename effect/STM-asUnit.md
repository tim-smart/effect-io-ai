# asUnit

This function maps the success value of an `STM` to `void`. If the original
`STM` succeeds, the returned `STM` will also succeed. If the original `STM`
fails, the returned `STM` will fail with the same error.

To import and use `asUnit` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.asUnit
```

**Signature**

```ts
export declare const asUnit: <R, E, A>(self: STM<R, E, A>) => STM<R, E, void>
```
