# withTestConfigScoped

Sets the implementation of the config service to the specified value and
restores it to its original value when the scope is closed.

To import and use `withTestConfigScoped` from the "TestServices" module:

```ts
import * as TestServices from 'effect/TestServices'

// Can be accessed like this
TestServices.withTestConfigScoped
```

**Signature**

```ts
export declare const withTestConfigScoped: (config: TestConfig.TestConfig) => Effect.Effect<Scope.Scope, never, void>
```
