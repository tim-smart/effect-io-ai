# suspend

Suspends creation of the specified transaction lazily.

To import and use `suspend` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.suspend
```

**Signature**

```ts
export declare const suspend: <R, E, A>(evaluate: LazyArg<STM<R, E, A>>) => STM<R, E, A>
```
