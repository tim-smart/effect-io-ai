# withAnnotations

Executes the specified workflow with the specified implementation of the
annotations service.

To import and use `withAnnotations` from the "TestServices" module:

```ts
import * as TestServices from 'effect/TestServices'

// Can be accessed like this
TestServices.withAnnotations
```

**Signature**

```ts
export declare const withAnnotations: ((
  annotations: Annotations.TestAnnotations
) => <R, E, A>(effect: Effect.Effect<R, E, A>) => Effect.Effect<R, E, A>) &
  (<R, E, A>(effect: Effect.Effect<R, E, A>, annotations: Annotations.TestAnnotations) => Effect.Effect<R, E, A>)
```
