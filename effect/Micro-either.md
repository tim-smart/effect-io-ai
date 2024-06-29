# either

Replace the success value of the given `Micro` effect with an `Either`,
wrapping the success value in `Right` and wrapping any expected errors with
a `Left`.

To import and use `either` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.either
```

**Signature**

```ts
export declare const either: <A, E, R>(self: Micro<A, E, R>) => Micro<Either.Either<A, E>, never, R>
```
