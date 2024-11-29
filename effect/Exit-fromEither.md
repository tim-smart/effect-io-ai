# fromEither

Converts an `Either<R, L>` into an `Exit<R, L>`.

To import and use `fromEither` from the "Exit" module:

ts
import \* as Exit from "effect/Exit"
// Can be accessed like this
Exit.fromEither
undefined

**Signature**

```ts
export declare const fromEither: <R, L>(either: Either.Either<R, L>) => Exit<R, L>
```
