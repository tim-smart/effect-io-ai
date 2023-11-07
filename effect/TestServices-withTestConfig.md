# withTestConfig

Executes the specified workflow with the specified implementation of the
config service.

To import and use `withTestConfig` from the "TestServices" module:

```ts
import * as TestServices from 'effect/TestServices'

// Can be accessed like this
TestServices.withTestConfig
```

**Signature**

```ts
export declare const withTestConfig: ((
  config: TestConfig.TestConfig
) => <R, E, A>(effect: Effect.Effect<R, E, A>) => Effect.Effect<R, E, A>) &
  (<R, E, A>(effect: Effect.Effect<R, E, A>, config: TestConfig.TestConfig) => Effect.Effect<R, E, A>)
```
