Package: `effect`<br />
Module: `TestServices`<br />

## TestServices.annotationsWith

Retrieves the `Annotations` service for this test and uses it to run the
specified workflow.

**Signature**

```ts
declare const annotationsWith: <A, E, R>(f: (annotations: Annotations.TestAnnotations) => Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestServices.ts#L66)

Since v2.0.0