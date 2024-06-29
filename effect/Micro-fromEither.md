# fromEither

Converts an `Either` into a `Micro` effect, that will fail with the left side
of the either if it is a `Left`. Otherwise, it will succeed with the right
side of the either.

To import and use `fromEither` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.fromEither
```

**Signature**

```ts
export declare const fromEither: <R, L>(either: Either.Either<R, L>) => Micro<R, L, never>
```
