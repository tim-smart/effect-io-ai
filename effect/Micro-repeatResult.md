# repeatResult

Repeat the given `Micro` using the provided options.

The `while` predicate will be checked after each iteration, and can use the
fall `Result` of the effect to determine if the repetition should continue.

To import and use `repeatResult` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.repeatResult
```

**Signature**

```ts
export declare const repeatResult: {
  <A, E>(options: {
    while: Predicate<Result<A, E>>
    times?: number | undefined
    delay?: DelayFn | undefined
  }): <R>(self: Micro<A, E, R>) => Micro<A, E, R>
  <A, E, R>(
    self: Micro<A, E, R>,
    options: { while: Predicate<Result<A, E>>; times?: number | undefined; delay?: DelayFn | undefined }
  ): Micro<A, E, R>
}
```
