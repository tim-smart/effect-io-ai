Package: `effect`<br />
Module: `TestAnnotationMap`<br />

## TestAnnotationMap.TestAnnotationMap

An annotation map keeps track of annotations of different types.

**Signature**

```ts
export interface TestAnnotationMap {
  readonly [TestAnnotationMapTypeId]: TestAnnotationMapTypeId
  /** @internal */
  readonly map: HashMap.HashMap<TestAnnotation.TestAnnotation<any>, any>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestAnnotationMap.ts#L24)

Since v2.0.0