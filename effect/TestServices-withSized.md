# withSized

Executes the specified workflow with the specified implementation of the
sized service.

To import and use `withSized` from the "TestServices" module:

```ts
import * as TestServices from "effect/TestServices"
// Can be accessed like this
TestServices.withSized
```

**Signature**

```ts
export declare const withSized: ((
  sized: Sized.TestSized
) => <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>) &
  (<A, E, R>(effect: Effect.Effect<A, E, R>, sized: Sized.TestSized) => Effect.Effect<A, E, R>)
```
