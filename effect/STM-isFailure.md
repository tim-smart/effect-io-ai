# isFailure

Returns whether this transactional effect is a failure.

To import and use `isFailure` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.isFailure
```

**Signature**

```ts
export declare const isFailure: <R, E, A>(self: STM<R, E, A>) => STM<R, never, boolean>
```
