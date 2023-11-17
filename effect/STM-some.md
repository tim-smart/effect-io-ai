# some

Converts an option on values into an option on errors.

To import and use `some` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.some
```

**Signature**

```ts
export declare const some: <R, E, A>(self: STM<R, E, Option.Option<A>>) => STM<R, Option.Option<E>, A>
```
