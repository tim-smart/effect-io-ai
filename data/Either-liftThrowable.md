# liftThrowable

Lifts a function that may throw to one returning a `Either`.

Part of the `Either` module, imported from `@effect/data/Either`.

**Signature**

```ts
export declare const liftThrowable: <A extends readonly unknown[], B, E>(
  f: (...a: A) => B,
  onThrow: (error: unknown) => E
) => (...a: A) => Either<E, B>
```
