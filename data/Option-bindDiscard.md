# bindDiscard

A variant of `bind` that sequentially ignores the scope.

Part of the `Option` module, imported from `@effect/data/Option`.

**Signature**

```ts
export declare const bindDiscard: {
  <N extends string, A extends object, B>(name: Exclude<N, keyof A>, that: Option<B>): (
    self: Option<A>
  ) => Option<{ [K in N | keyof A]: K extends keyof A ? A[K] : B }>
  <A extends object, N extends string, B>(self: Option<A>, name: Exclude<N, keyof A>, that: Option<B>): Option<{
    [K in N | keyof A]: K extends keyof A ? A[K] : B
  }>
}
```
