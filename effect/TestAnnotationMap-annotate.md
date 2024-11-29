# annotate

Appends the specified annotation to the annotation map.

To import and use `annotate` from the "TestAnnotationMap" module:

ts
import \* as TestAnnotationMap from "effect/TestAnnotationMap"
// Can be accessed like this
TestAnnotationMap.annotate
undefined

**Signature**

```ts
export declare const annotate: (<A>(
  key: TestAnnotation.TestAnnotation<A>,
  value: A
) => (self: TestAnnotationMap) => TestAnnotationMap) &
  (<A>(self: TestAnnotationMap, key: TestAnnotation.TestAnnotation<A>, value: A) => TestAnnotationMap)
```
