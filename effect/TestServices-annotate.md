# annotate

Accesses an `Annotations` instance in the context and appends the
specified annotation to the annotation map.

To import and use `annotate` from the "TestServices" module:

```ts
import * as TestServices from "effect/TestServices"
// Can be accessed like this
TestServices.annotate
```

**Signature**

```ts
export declare const annotate: <A>(key: TestAnnotation.TestAnnotation<A>, value: A) => Effect.Effect<never, never, void>
```
