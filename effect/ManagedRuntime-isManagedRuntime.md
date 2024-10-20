# isManagedRuntime

Checks if the provided argument is a `ManagedRuntime`.

To import and use `isManagedRuntime` from the "ManagedRuntime" module:

```ts
import * as ManagedRuntime from "effect/ManagedRuntime"
// Can be accessed like this
ManagedRuntime.isManagedRuntime
```

**Signature**

```ts
export declare const isManagedRuntime: (input: unknown) => input is ManagedRuntime<unknown, unknown>
```
