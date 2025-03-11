## get

Retrieves the annotation of the specified type, or its default value if
there is none.

**Signature**

```ts
declare const get: (<A>(key: TestAnnotation.TestAnnotation<A>) => (self: TestAnnotationMap) => A) & (<A>(self: TestAnnotationMap, key: TestAnnotation.TestAnnotation<A>) => A)
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestAnnotationMap.ts#L82)

Since v2.0.0