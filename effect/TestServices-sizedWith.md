# sizedWith

Retrieves the `Sized` service for this test and uses it to run the
specified workflow.

To import and use `sizedWith` from the "TestServices" module:

ts
import \* as TestServices from "effect/TestServices"
// Can be accessed like this
TestServices.sizedWith
undefined

**Signature**

```ts
export declare const sizedWith: <A, E, R>(
  f: (sized: Sized.TestSized) => Effect.Effect<A, E, R>
) => Effect.Effect<A, E, R>
```
