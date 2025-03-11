## zipWith

Zips this exit together with that exit using the specified combination
functions.

**Signature**

```ts
declare const zipWith: { <B, E2, A, C, E>(that: Exit<B, E2>, options: { readonly onSuccess: (a: A, b: B) => C; readonly onFailure: (cause: Cause.Cause<E>, cause2: Cause.Cause<E2>) => Cause.Cause<any>; }): (self: Exit<A, E>) => Exit<C, any>; <A, E, B, E2, C>(self: Exit<A, E>, that: Exit<B, E2>, options: { readonly onSuccess: (a: A, b: B) => C; readonly onFailure: (cause: Cause.Cause<E>, cause2: Cause.Cause<E2>) => Cause.Cause<E | E2>; }): Exit<C, E | E2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L451)

Since v2.0.0