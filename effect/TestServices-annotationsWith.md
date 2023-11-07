# annotationsWith

Retrieves the `Annotations` service for this test and uses it to run the
specified workflow.

To import and use `annotationsWith` from the "TestServices" module:

```ts
import * as TestServices from 'effect/TestServices'

// Can be accessed like this
TestServices.annotationsWith
```

**Signature**

```ts
export declare const annotationsWith: <R, E, A>(
  f: (annotations: Annotations.TestAnnotations) => Effect.Effect<R, E, A>
) => Effect.Effect<R, E, A>
```
