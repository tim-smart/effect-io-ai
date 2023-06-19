# bindDiscard

A variant of `bind` that sequentially ignores the scope.

Part of the `Identity` module, imported from `@effect/data/Identity`.

**Signature**

```ts
export declare const bindDiscard: {
  <N extends string, A extends object, B>(name: Exclude<N, keyof A>, that: B): (self: A) => {
    [K in N | keyof A]: K extends keyof A ? A[K] : B
  }
  <A extends object, N extends string, B>(self: A, name: Exclude<N, keyof A>, that: B): {
    [K in N | keyof A]: K extends keyof A ? A[K] : B
  }
}
```
