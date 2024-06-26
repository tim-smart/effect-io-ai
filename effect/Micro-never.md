# never

A `Micro` that will never succeed or fail. It wraps `setInterval` to prevent
the Javascript runtime from exiting.

To import and use `never` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.never
```

**Signature**

```ts
export declare const never: Micro<never, never, never>
```
