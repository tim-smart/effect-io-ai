# withTestConfig

Executes the specified workflow with the specified implementation of the
config service.

To import and use `withTestConfig` from the "TestServices" module:

```ts
import * as TestServices from "effect/TestServices"
// Can be accessed like this
TestServices.withTestConfig
```

**Signature**

```ts
export declare const withTestConfig: ((
  config: TestConfig.TestConfig
) => <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>) &
  (<A, E, R>(effect: Effect.Effect<A, E, R>, config: TestConfig.TestConfig) => Effect.Effect<A, E, R>)
```
