# sizedWith

Retrieves the `Sized` service for this test and uses it to run the
specified workflow.

To import and use `sizedWith` from the "TestServices" module:

```ts
import * as TestServices from 'effect/TestServices'

// Can be accessed like this
TestServices.sizedWith
```

**Signature**

```ts
export declare const sizedWith: <R, E, A>(
  f: (sized: Sized.TestSized) => Effect.Effect<R, E, A>
) => Effect.Effect<R, E, A>
```
