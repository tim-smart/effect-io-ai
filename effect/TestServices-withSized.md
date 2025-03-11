## withSized

Executes the specified workflow with the specified implementation of the
sized service.

**Signature**

```ts
declare const withSized: ((sized: Sized.TestSized) => <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>) & (<A, E, R>(effect: Effect.Effect<A, E, R>, sized: Sized.TestSized) => Effect.Effect<A, E, R>)
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestServices.ts#L253)

Since v2.0.0