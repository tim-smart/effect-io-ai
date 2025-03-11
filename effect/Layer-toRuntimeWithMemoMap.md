## toRuntimeWithMemoMap

Converts a layer that requires no services into a scoped runtime, which can
be used to execute effects.

**Signature**

```ts
declare const toRuntimeWithMemoMap: { (memoMap: MemoMap): <RIn, E, ROut>(self: Layer<ROut, E, RIn>) => Effect.Effect<Runtime.Runtime<ROut>, E, Scope.Scope | RIn>; <RIn, E, ROut>(self: Layer<ROut, E, RIn>, memoMap: MemoMap): Effect.Effect<Runtime.Runtime<ROut>, E, Scope.Scope | RIn>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L808)

Since v2.0.0