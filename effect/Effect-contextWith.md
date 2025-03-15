Package: `effect`<br />
Module: `Effect`<br />

## Effect.contextWith

Accesses the context and applies a transformation function.

**Details**

This function retrieves the context of the effect and applies a pure
transformation function to it. The result of the transformation is then
returned within the effect.

**See**

- `contextWithEffect` for a version that allows effectful transformations.

**Signature**

```ts
declare const contextWith: <R, A>(f: (context: Context.Context<R>) => A) => Effect<A, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L7387)

Since v2.0.0