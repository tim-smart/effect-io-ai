# unannotate

Removes any annotation from the failure cause

To import and use `unannotate` from the "Exit" module:

```ts
import * as Exit from '@effect/io/Exit'

// Can be accessed like this
Exit.unannotate
```

**Signature**

```ts
export declare const unannotate: <E, A>(exit: Exit<E, A>) => Exit<E, A>
```
