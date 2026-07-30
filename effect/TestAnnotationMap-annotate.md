Package: `effect`<br />
Module: `TestAnnotationMap`<br />

## TestAnnotationMap.annotate

Appends the specified annotation to the annotation map.

**Signature**

```ts
declare const annotate: (<A>(key: TestAnnotation.TestAnnotation<A>, value: A) => (self: TestAnnotationMap) => TestAnnotationMap) & (<A>(self: TestAnnotationMap, key: TestAnnotation.TestAnnotation<A>, value: A) => TestAnnotationMap)
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestAnnotationMap.ts#L97)

Since v2.0.0