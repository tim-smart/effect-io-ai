# recurUntilOption

A schedule that recurs for until the input value becomes applicable to
partial function and then map that value with given function.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const recurUntilOption: <A, B>(pf: (a: A) => Option.Option<B>) => Schedule<never, A, Option.Option<B>>
```
