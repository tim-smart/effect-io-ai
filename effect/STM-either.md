# either

Converts the failure channel into an `Either`.

To import and use `either` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.either
```

**Signature**

```ts
export declare const either: <A, E, R>(self: STM<A, E, R>) => STM<Either.Either<A, E>, never, R>
```
