# unsome

Converts an option on errors into an option on values.

To import and use `unsome` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.unsome
```

**Signature**

```ts
export declare const unsome: <R, E, A>(self: STM<R, Option.Option<E>, A>) => STM<R, E, Option.Option<A>>
```
