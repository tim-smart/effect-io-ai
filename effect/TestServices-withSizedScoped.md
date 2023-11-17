# withSizedScoped

Sets the implementation of the sized service to the specified value and
restores it to its original value when the scope is closed.

To import and use `withSizedScoped` from the "TestServices" module:

```ts
import * as TestServices from "effect/TestServices"
// Can be accessed like this
TestServices.withSizedScoped
```

**Signature**

```ts
export declare const withSizedScoped: (sized: Sized.TestSized) => Effect.Effect<Scope.Scope, never, void>
```
