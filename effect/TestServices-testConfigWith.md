# testConfigWith

Retrieves the `TestConfig` service for this test and uses it to run the
specified workflow.

To import and use `testConfigWith` from the "TestServices" module:

```ts
import * as TestServices from 'effect/TestServices'

// Can be accessed like this
TestServices.testConfigWith
```

**Signature**

```ts
export declare const testConfigWith: <R, E, A>(
  f: (config: TestConfig.TestConfig) => Effect.Effect<R, E, A>
) => Effect.Effect<R, E, A>
```
