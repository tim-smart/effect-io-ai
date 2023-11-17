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
) => <R, E, A>(effect: Effect.Effect<R, E, A>) => Effect.Effect<R, E, A>) &
  (<R, E, A>(effect: Effect.Effect<R, E, A>, sized: Sized.TestSized) => Effect.Effect<R, E, A>)
```
