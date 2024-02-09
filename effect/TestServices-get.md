# get

Accesses an `Annotations` instance in the context and retrieves the
annotation of the specified type, or its default value if there is none.

To import and use `get` from the "TestServices" module:

```ts
import * as TestServices from "effect/TestServices"
// Can be accessed like this
TestServices.get
```

**Signature**

```ts
export declare const get: <A>(key: TestAnnotation.TestAnnotation<A>) => Effect.Effect<A, never, never>
```
