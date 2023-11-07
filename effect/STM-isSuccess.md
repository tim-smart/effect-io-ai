# isSuccess

Returns whether this transactional effect is a success.

To import and use `isSuccess` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.isSuccess
```

**Signature**

```ts
export declare const isSuccess: <R, E, A>(self: STM<R, E, A>) => STM<R, never, boolean>
```
