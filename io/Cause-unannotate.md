# unannotate

Removes any annotation from the cause

To import and use `unannotate` from the "Cause" module:

```ts
import * as Cause from '@effect/io/Cause'

// Can be accessed like this
Cause.unannotate
```

**Signature**

```ts
export declare const unannotate: <E>(cause: Cause<E>) => Cause<E>
```
