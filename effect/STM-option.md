# option

Converts the failure channel into an `Option`.

To import and use `option` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.option
```

**Signature**

```ts
export declare const option: <R, E, A>(self: STM<R, E, A>) => STM<R, never, Option.Option<A>>
```
