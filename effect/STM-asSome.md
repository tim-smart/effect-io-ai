# asSome

Maps the success value of this effect to an optional value.

To import and use `asSome` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.asSome
```

**Signature**

```ts
export declare const asSome: <R, E, A>(self: STM<R, E, A>) => STM<R, E, Option.Option<A>>
```
