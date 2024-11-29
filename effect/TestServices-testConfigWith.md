# testConfigWith

Retrieves the `TestConfig` service for this test and uses it to run the
specified workflow.

To import and use `testConfigWith` from the "TestServices" module:

ts
import \* as TestServices from "effect/TestServices"
// Can be accessed like this
TestServices.testConfigWith
undefined

**Signature**

```ts
export declare const testConfigWith: <A, E, R>(
  f: (config: TestConfig.TestConfig) => Effect.Effect<A, E, R>
) => Effect.Effect<A, E, R>
```
