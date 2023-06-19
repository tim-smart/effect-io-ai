# absurd

The `absurd` function is a stub for cases where a value of type `never` is encountered in your code,
meaning that it should be impossible for this code to be executed.

This function is particularly when it's necessary to specify that certain cases are impossible.

Part of the `Function` module, imported from `@effect/data/Function`.

**Signature**

```ts
export declare const absurd: <A>(_: never) => A
```
