# none

Requires the option produced by this value to be `None`.

To import and use `none` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.none
```

**Signature**

```ts
export declare const none: <R, E, A>(self: STM<R, E, Option.Option<A>>) => STM<R, Option.Option<E>, void>
```
