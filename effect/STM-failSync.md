# failSync

Fails the transactional effect with the specified lazily evaluated error.

To import and use `failSync` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.failSync
```

**Signature**

```ts
export declare const failSync: <E>(evaluate: LazyArg<E>) => STM<never, E, never>
```
