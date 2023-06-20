# liftThrowable

Lifts a function that may throw to one returning a `Either`.

To import and use `liftThrowable` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.liftThrowable
```

**Signature**

```ts
export declare const liftThrowable: <A extends readonly unknown[], B, E>(
  f: (...a: A) => B,
  onThrow: (error: unknown) => E
) => (...a: A) => Either<E, B>
```
