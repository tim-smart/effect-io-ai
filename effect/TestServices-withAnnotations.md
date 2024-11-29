# withAnnotations

Executes the specified workflow with the specified implementation of the
annotations service.

To import and use `withAnnotations` from the "TestServices" module:

ts
import \* as TestServices from "effect/TestServices"
// Can be accessed like this
TestServices.withAnnotations
undefined

**Signature**

```ts
export declare const withAnnotations: ((
  annotations: Annotations.TestAnnotations
) => <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>) &
  (<A, E, R>(effect: Effect.Effect<A, E, R>, annotations: Annotations.TestAnnotations) => Effect.Effect<A, E, R>)
```
