## annotate

Accesses an `Annotations` instance in the context and appends the
specified annotation to the annotation map.

**Signature**

```ts
declare const annotate: <A>(key: TestAnnotation.TestAnnotation<A>, value: A) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestServices.ts#L133)

Since v2.0.0