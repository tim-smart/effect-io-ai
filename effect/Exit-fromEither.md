# fromEither

Converts an `Either<E, A>` into an `Exit<E, A>`.

To import and use `fromEither` from the "Exit" module:

```ts
import * as Exit from "effect/Exit"
// Can be accessed like this
Exit.fromEither
```

**Signature**

```ts
export declare const fromEither: <E, A>(either: Either.Either<E, A>) => Exit<E, A>
```
