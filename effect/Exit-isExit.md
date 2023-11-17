# isExit

Returns `true` if the specified value is an `Exit`, `false` otherwise.

To import and use `isExit` from the "Exit" module:

```ts
import * as Exit from "effect/Exit"
// Can be accessed like this
Exit.isExit
```

**Signature**

```ts
export declare const isExit: (u: unknown) => u is Exit<unknown, unknown>
```
