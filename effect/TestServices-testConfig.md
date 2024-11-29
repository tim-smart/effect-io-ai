# testConfig

Retrieves the `TestConfig` service for this test.

To import and use `testConfig` from the "TestServices" module:

ts
import \* as TestServices from "effect/TestServices"
// Can be accessed like this
TestServices.testConfig
undefined

**Signature**

```ts
export declare const testConfig: Effect.Effect<TestConfig.TestConfig, never, never>
```
