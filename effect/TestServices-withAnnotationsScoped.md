# withAnnotationsScoped

Sets the implementation of the annotations service to the specified value
and restores it to its original value when the scope is closed.

To import and use `withAnnotationsScoped` from the "TestServices" module:

```ts
import * as TestServices from "effect/TestServices"
// Can be accessed like this
TestServices.withAnnotationsScoped
```

**Signature**

```ts
export declare const withAnnotationsScoped: (
  annotations: Annotations.TestAnnotations
) => Effect.Effect<Scope.Scope, never, void>
```
