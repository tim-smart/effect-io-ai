# either

Converts the failure channel into an `Either`.

To import and use `either` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.either
```

**Signature**

```ts
export declare const either: <R, E, A>(self: STM<R, E, A>) => STM<R, never, Either.Either<E, A>>
```
