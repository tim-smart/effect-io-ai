# asSomeError

Maps the error value of this effect to an optional value.

To import and use `asSomeError` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.asSomeError
```

**Signature**

```ts
export declare const asSomeError: <R, E, A>(self: STM<R, E, A>) => STM<R, Option.Option<E>, A>
```
