# unsome

Converts an option on errors into an option on values.

To import and use `unsome` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.unsome
```

**Signature**

```ts
export declare const unsome: <A, E, R>(self: STM<A, Option.Option<E>, R>) => STM<Option.Option<A>, E, R>
```
