# runSyncResult

Attempt to execute the `Micro` effect synchronously and return the `Result`.

If any asynchronous effects are encountered, the function will return a
FailureUnexpected containing the `Handle`.

To import and use `runSyncResult` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.runSyncResult
```

**Signature**

```ts
export declare const runSyncResult: <A, E>(effect: Micro<A, E, never>) => Result<A, E>
```
