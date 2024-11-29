# get

Retrieves the annotation of the specified type, or its default value if
there is none.

To import and use `get` from the "TestAnnotationMap" module:

ts
import \* as TestAnnotationMap from "effect/TestAnnotationMap"
// Can be accessed like this
TestAnnotationMap.get
undefined

**Signature**

```ts
export declare const get: (<A>(key: TestAnnotation.TestAnnotation<A>) => (self: TestAnnotationMap) => A) &
  (<A>(self: TestAnnotationMap, key: TestAnnotation.TestAnnotation<A>) => A)
```
