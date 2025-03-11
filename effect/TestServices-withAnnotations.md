## withAnnotations

Executes the specified workflow with the specified implementation of the
annotations service.

**Signature**

```ts
declare const withAnnotations: ((annotations: Annotations.TestAnnotations) => <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>) & (<A, E, R>(effect: Effect.Effect<A, E, R>, annotations: Annotations.TestAnnotations) => Effect.Effect<A, E, R>)
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestServices.ts#L80)

Since v2.0.0