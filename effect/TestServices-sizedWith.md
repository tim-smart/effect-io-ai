## sizedWith

Retrieves the `Sized` service for this test and uses it to run the
specified workflow.

**Signature**

```ts
declare const sizedWith: <A, E, R>(f: (sized: Sized.TestSized) => Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestServices.ts#L234)

Since v2.0.0