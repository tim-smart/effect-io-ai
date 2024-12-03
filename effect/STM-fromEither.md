# fromEither

Lifts an `Either` into a `STM`.

To import and use `fromEither` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.fromEither
```

**Signature**

```ts
export declare const fromEither: <A, E>(either: Either.Either<A, E>) => STM<A, E>
```
