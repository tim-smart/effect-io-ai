Package: `effect`<br />
Module: `Stream`<br />

## Stream.scopedWith

Use a function that receives a scope and returns an effect to emit an output
element. The output element will be the result of the returned effect, if
successful.

**Signature**

```ts
declare const scopedWith: <A, E, R>(f: (scope: Scope.Scope) => Effect.Effect<A, E, R>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4629)

Since v3.11.0