# testConfigLayer

Constructs a new `TestConfig` service with the specified settings.

To import and use `testConfigLayer` from the "TestServices" module:

ts
import \* as TestServices from "effect/TestServices"
// Can be accessed like this
TestServices.testConfigLayer
undefined

**Signature**

```ts
export declare const testConfigLayer: (params: {
  readonly repeats: number
  readonly retries: number
  readonly samples: number
  readonly shrinks: number
}) => Layer.Layer<TestConfig.TestConfig>
```
