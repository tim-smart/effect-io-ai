## contextWithEffect

Accesses the context and performs an effectful transformation.

**Details**

This function retrieves the context and allows you to transform it
effectually using another effect. It is useful when the transformation
involves asynchronous or effectful operations.

**See**

- `contextWith` for a version that allows pure transformations.

**Signature**

```ts
declare const contextWithEffect: <R2, A, E, R>(f: (context: Context.Context<R2>) => Effect<A, E, R>) => Effect<A, E, R | R2>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L7268)

Since v2.0.0