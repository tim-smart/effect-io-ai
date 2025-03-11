## get

Accesses an `Annotations` instance in the context and retrieves the
annotation of the specified type, or its default value if there is none.

**Signature**

```ts
declare const get: <A>(key: TestAnnotation.TestAnnotation<A>) => Effect.Effect<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestServices.ts#L124)

Since v2.0.0