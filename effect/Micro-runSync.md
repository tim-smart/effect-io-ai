# runSync

Attempt to execute the `Micro` effect synchronously and return the success
value.

To import and use `runSync` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.runSync
```

**Signature**

```ts
export declare const runSync: <A, E>(effect: Micro<A, E, never>) => A
```
