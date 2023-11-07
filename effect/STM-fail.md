# fail

Fails the transactional effect with the specified error.

To import and use `fail` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.fail
```

**Signature**

```ts
export declare const fail: <E>(error: E) => STM<never, E, never>
```
